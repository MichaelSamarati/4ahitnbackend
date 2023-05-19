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

  socket.on("error", (err) => {
    console.log("error: " + err.message);
    console.log(err.stack);
  });
  socket.on("connect_error", (err) => {
    console.log("connect_error: " + err.message);
    console.log(err.stack);
  });
  socket.on("connect_failed", (err) => {
    console.log("connect_failed: " + err.message);
    console.log(err.stack);
  });

  socket.on("disconnect", () => {});
  socket.on("test", (msg) => {
    console.log(msg);
  });
  socket.on("students", async (data) => {
    console.log("students requested!");
    try {
      const persons = await db.query(
        "select * from persons where personRole='Schüler' order by lastname"
      );
      console.log("students fetched from database!");
      socket.emit("students_length", { length: persons.length });
      for (const person of persons) {
        let personWithImage = await exchangeImagenameWithImage(
          person,
          imagesMap
        );
        socket.emit("students_success", personWithImage);
      }
      console.log("students process finished!");
    } catch (e) {
      socket.emit("students_failure", "Error occured!");
    }
  });
  socket.on("teachers", async (data) => {
    console.log("teachers requested!");
    try {
      const persons = await db.query(
        "select * from persons where personRole='Lehrer' order by lastname"
      );
      console.log("teachers fetched from database!");
      socket.emit("teachers_length", { length: persons.length });
      for (const person of persons) {
        let personWithImage = await exchangeImagenameWithImage(
          person,
          imagesMap
        );
        socket.emit("teachers_success", personWithImage);
      }
      console.log("teachers process finished!");
    } catch (e) {
      socket.emit("teachers_failure", "Error occured!");
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
  }, 300000);
}

hello();


process.on('uncaughtException', function (err) {
  console.log("uncaughtException:")
  console.error(err.stack);
  console.log("Node NOT Exiting...");
});
