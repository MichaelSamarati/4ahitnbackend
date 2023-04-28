require("dotenv").config();
const express = require("express");
const app = express();
const http = require("http");
const { Server } = require("socket.io");
const cors = require("cors");

const db = require("./db");
const { exchangeImagenameWithImage } = require("./student");

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
  socket.on("disconnect", () => {});
  socket.on("test", (msg) => {
    console.log(msg);
  });
  socket.on("students", async (data) => {
    try {
      const students = await db.query(
        "select * from students order by lastname"
      );
      for (const student of students) {
        let studentWithImage = await exchangeImagenameWithImage(
          student,
          imagesMap
        );
        socket.emit("students_success", studentWithImage);
      }
    } catch (e) {
      socket.emit("students_failure", "Error occured!");
    }
  });
  // socket.on("student", async (data) => {
  //   try {
  //     const res = await db.query(
  //       "select * from students where studentid = " + data.id
  //     );
  //     const student = res[0];
  //     const normalizedStudent = await exchangeImagenameWithImage(student);
  //     socket.emit("student_success", normalizedStudent);
  //   } catch (e) {
  //     socket.emit("student_failure", "Error occured!");
  //   }
  // });
  socket.on("comments", async (data) => {
    try {
      const studentid = data.id;
      const comments = await db.query(
        "select * from comments where comments.studentid=" + studentid
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
      const studentid = data.studentid;
      var dat = new Date(data.dat).toISOString().slice(0, 10).replace(/-/g, "");
      await db.query(
        "insert into comments (name, message, dat, studentid) values ('" +
          name +
          "', '" +
          message +
          "', '" +
          dat +
          "'," +
          studentid +
          ")"
      );
      socket.emit("comments_insert_success", "Success!");
    } catch (e) {
      socket.emit("comments_insert_failure", "Error occured!");
    }
  });
});

server.listen(PORT, () => {
  console.log("Backend server is listening on port: " + PORT + " ...");
});

async function readImageFiles() {
  try {
    const imageNames = await db.query("select imageName from students order by lastname");
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

readImageFiles();
