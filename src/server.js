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
    // methods: ["GET", "POST", "DELETE", "UPDATE", "PUT", "PATCH"],
    // allowedHeaders: ["my-custom-header"],
    // allowRequest: (req, callback) => {
    //   const noOriginHeader = req.headers.origin === undefined;
    //   callback(null, noOriginHeader);
    // },
  },
});
const PORT = process.env.PORT || 80;

const file = require("./file");

var imagesMap = new Map();

const SESSION_RELOAD_INTERVAL = 120 * 60 * 1000;

// setInterval(() => {
//   io.sockets.sockets.forEach((socket) => {
//     socket.disconnect(true);
//     const newSocket = io.connect(socket.client.conn.);
//   });
// }, 30* 1000);

server.on("clientError", (err, socket) => {
  console.log("clientError:");
  console.log(err);
  console.log("err.code: " + err.code);
  // if (err.code === "ECONNRESET" || !socket.writable)
  //   socket.end("HTTP/2 400 Bad Request\n");
  // socket.destroy();
  console.log("client error\n", err);
});

io.on("connection", (socket) => {
  var clientIp = socket.conn.remoteAddress;
  console.log("New connection from " + clientIp);
  socket.on("close", function (exception) {
    console.log("SOCKET CLOSED");
  });

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

  // const timer = setInterval(() => {
  //   socket.request.session.reload((err) => {
  //     if (err) {
  //       // forces the client to reconnect
  //       socket.conn.close();

  //       // you can also use socket.disconnect(), but in that case the client
  //       // will not try to reconnect
  //     }
  //   });
  // }, SESSION_RELOAD_INTERVAL);
  socket.on("disconnect", () => {
    console.log("disconnect!");
  });
  socket.on("test", (msg) => {
    console.log(msg);
  });
  socket.on("students", async (data) => {
    console.log("students requested!");
    try {
      const persons = await db.query(
        "select * from persons where personRole='Schüler' order by lastname"
      );
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
      console.log("students_failure error");
    }
    console.log("students end");
  });
  socket.on("teachers", async (data) => {
    console.log("teachers requested!");
    try {
      const persons = await db.query(
        "select * from persons where personRole='Lehrer' order by lastname"
      );
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
      console.log("teachers_failure error");
    }
  });
  socket.on("comments", async (data) => {
    console.log("comments requested!");

    try {
      const personid = data.id;
      const comments = await db.query(
        "select * from comments where comments.personid=" + personid
      );
      socket.emit("comments_success", comments);
    } catch (e) {
      console.log("comments_success");
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
      console.log("comments_insert_failure");
    }
  });
});

readImageFiles();

server.listen(PORT, () => {
  console.log("Backend server is listening on port: " + PORT + " ...");
  console.log("ITP2 is my favourite subject 😍💕 and it is an honor for me to serve the backend 24/7 with an uptime of 100% 😎🫡")
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

process.on("uncaughtException", function (err) {
  console.log("uncaughtException:");
  console.error(err.stack);
  console.log("Node NOT Exiting...");
});
