// db.js
const mysql = require('mysql2/promise');

const pool = mysql.createPool({
    host: 'localhost', // Your MySQL host
    user: 'root', // Your MySQL username
    password: '', // Your MySQL password
    database: 'music_db', // Your MySQL database name
});

module.exports = pool;
