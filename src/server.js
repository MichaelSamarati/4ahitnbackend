const express = require("express");
const app = express();
const http = require("http");
const { Server } = require("socket.io");
const cors = require("cors");

const db = require("./db");
const { normalizeStudent } = require("./student");

app.use(cors());

const server = http.createServer(app);

const io = new Server(server, {
  cors: {
    origin: "*",
  },
});
const PORT = process.env.PORT || 80;

io.on("connection", (socket) => {
  // var clientIp = socket.request.connection.remoteAddress;

  // console.log(clientIp, "adasda");
  // console.log(socket.id);
  socket.on("disconnect", () => {});
  socket.on("test", (msg) => {
    console.log(msg);
  });
  socket.on("students", async (data) => {
    try {
      const students = await db.query("select * from students");
      const normalizedStudents = await Promise.all(
        students.map(async (student) => {
          return await normalizeStudent(student);
        })
      );
      socket.emit("students_success", normalizedStudents);
    } catch (e) {
      socket.emit("students_failure", "Error occured!");
    }
  });
  socket.on("student", async (data) => {
    try {
      const res = await db.query(
        "select * from students where studentid = " + data.id
      );
      const student = res[0];
      const normalizedStudent = await normalizeStudent(student);
      socket.emit("student_success", normalizedStudent);
    } catch (e) {
      console.log(e);
      socket.emit("student_failure", "Error occured!");
    }
  });
});

server.listen(PORT, () => {
  console.log("Backend server is listening on port: " + PORT + " ...");
});

async function init() {
  // // console.log(
  // //   await file.getBase64FromImageFile(
  // //     "C:/code/20230402_4AHITN_Backend/backend/img/p1.gif"
  // //   )
  // // );
  // console.log(await db.query("select * from students"));
}
init();
