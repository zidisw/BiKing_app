const mysql = require('mysql2');

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'username',
  password: 'password',
  database: 'mydatabase'
});

connection.connect((err) => {
  if (err) {
    console.error('Error connecting to database: ', err);
  } else {
    console.log('Connected to database.');
  }
});

module.exports = connection;