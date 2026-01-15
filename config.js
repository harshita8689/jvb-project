// config.js
const mysql = require("mysql2/promise"); // promise wrapper

const pool = mysql.createPool({
  host: "localhost",
  user: "root",
  password: "", // your password
  database: "clothes_db", // ✅ UPDATED: Changed to the correct database name
  port: 3307,
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0,
});

module.exports = pool;
