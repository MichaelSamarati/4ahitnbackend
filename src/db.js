const mysql = require("mysql");
const util = require("util");

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "classcircle",
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
