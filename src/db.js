const mysql = require("mysql");
const util = require("util");

const db_config = {
  host: process.env.DATABASE_HOST,
  user: process.env.DATABASE_USER,
  password: process.env.DATABASE_PASSWORD,
  database: process.env.DATABASE_NAME,
  charset: "utf8mb4",
};

var connection;
var mysqlQuery;

function handleDisconnect() {
  connection = mysql.createConnection(db_config);
  connection.connect(function (err) {
    console.log("Connected to database!");
    if (err) {
      console.log("error when connecting to db:", err);
      setTimeout(handleDisconnect, 2000);
    }
  });
  connection.on("error", function (err) {
    console.log("db error", err);
    handleDisconnect();
  });
  mysqlQuery = util.promisify(connection.query).bind(connection);
}

handleDisconnect();
async function query(q) {
  try {
    const res = await mysqlQuery(q);
    return res;
  } catch (e) {
    console.log("error in query: ", e);
  }
}

module.exports = { query };
