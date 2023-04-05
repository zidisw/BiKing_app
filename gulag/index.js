const express = require('express');
const bodyParser = require('body-parser');
const cookieParser = require('cookie-parser');
const db = require('./db');

// Copied Line From db.js
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
// End of copied line

const app = express();
const port = 3000;

// configure body parser and cookie parser middleware
app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser());

// define routes
app.get('/login', (req, res) => {
  res.sendFile(__dirname + '/login.html');
});

app.post('/login', (req, res) => {
  const { username, password } = req.body;
  
  connection.query(
    'SELECT * FROM users WHERE username = ? AND password = ?',
    [username, password],
    (err, results, fields) => {
      if (err) {
        return res.status(500).send('Error querying database');
      }

      if (results.length === 0) {
        return res.status(401).send('Invalid username or password');
      }

      // Username and password match
      return res.status(200).send('Logged in successfully');
    }
  );
});

// start the server
app.listen(port, () => {
  console.log(`Server running on port ${port}.`);
});