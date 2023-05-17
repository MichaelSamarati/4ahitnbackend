require("dotenv").config();
const express = require("express");
const app = express();
const http = require("http");
const { Server } = require("socket.io");
const cors = require("cors");

const db = require("./db");
const { exchangeImagenameWithImage } = require("./person");

app.use(cors());

const server = http.createServer(app);

const io = new Server(server, {
  cors: {
    origin: "*",
  },
});
const PORT = process.env.PORT || 80;

const file = require("./file");

var imagesMap = new Map();

io.on("connection", (socket) => {
  var clientIp = socket.conn.remoteAddress;
  console.log("New connection from " + clientIp);
  socket.on("disconnect", () => {});
  socket.on("test", (msg) => {
    console.log(msg);
  });
  socket.on("persons", async (data) => {
    console.log("persons requested!");
    try {
      const persons = await db.query("select * from persons order by lastname");
      console.log("persons fetched from database!");
      for (const person of persons) {
        let personWithImage = await exchangeImagenameWithImage(
          person,
          imagesMap
        );
        socket.emit("persons_success", personWithImage);
      }
      console.log("persons process finished!");
    } catch (e) {
      socket.emit("persons_failure", "Error occured!");
    }
  });
  socket.on("comments", async (data) => {
    try {
      const personid = data.id;
      const comments = await db.query(
        "select * from comments where comments.personid=" + personid
      );
      socket.emit("comments_success", comments);
    } catch (e) {
      socket.emit("comments_failure", "Error occured!");
    }
  });
  socket.on("comment_insert", async (data) => {
    try {
      const name = data.name;
      const message = data.message;
      const personid = data.personid;
      var dat = new Date(data.dat).toISOString().slice(0, 10).replace(/-/g, "");
      await db.query(
        "insert into comments (name, message, dat, personid) values ('" +
          name +
          "', '" +
          message +
          "', '" +
          dat +
          "'," +
          personid +
          ")"
      );
      socket.emit("comments_insert_success", "Success!");
    } catch (e) {
      socket.emit("comments_insert_failure", "Error occured!");
    }
  });
});

readImageFiles();

server.listen(PORT, () => {
  console.log("Backend server is listening on port: " + PORT + " ...");
});

async function readImageFiles() {
  try {
    const imageNames = await db.query(
      "select imageName from persons order by lastname"
    );
    await Promise.all(
      imageNames.map(async (x) => {
        const base64StringImage = await file.getBase64FromImageFile(
          x.imageName
        );
        imagesMap.set(x.imageName, base64StringImage);
      })
    );
  } catch (e) {
    throw e;
  }
}

function hello() {
  setInterval(() => {
    console.log(new Date());
  }, 128000);
}

hello();
