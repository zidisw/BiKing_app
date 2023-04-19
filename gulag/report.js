const express = require('express');
const mysql = require('mysql2/promise');

const app = express();

async function getReportData() {
  const connection = await mysql.createConnection({
    host: 'localhost',
    user: 'Renka',
    password: 'password',
    database: 'biking'
  });

  // Execute a SELECT query to retrieve the report data
  const [rows] = await connection.execute('SELECT reportID, kelas, nama, konteks, tanggal FROM laporan_masalah');

  // Close the database connection
  await connection.end();

  // Return the report data as an array of objects
  return rows;
}

// Define an endpoint that returns the report data
app.get('/report', async (req, res) => {
  const reportData = await getReportData();
  res.json(reportData);
});

// Start the server
const port = 3000;
app.listen(port, () => {
  console.log(`Server started on port ${port}`);
});