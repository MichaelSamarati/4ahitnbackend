const mysql = require("mysql");
const util = require("util");

var con = mysql.createConnection({
  host: process.env.DATABASE_HOST,
  user: process.env.DATABASE_USER,
  password: process.env.DATABASE_PASSWORD,
  database: process.env.DATABASE_NAME,
  charset: "utf8mb4",
});

con.connect(function (err) {
  if (err) throw err;
  console.log("Connected to database!");
});

const mysqlQuery = util.promisify(con.query).bind(con);

async function query(q) {
  try {
    const res = await mysqlQuery(q);
    return res;
  } catch (e) {
    throw e;
  }
}

module.exports = { query };
