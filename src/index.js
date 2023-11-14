const express = require('express');
const cors = require('cors');
const mysql = require('mysql2/promise');
require('dotenv').config()

//create and config server
const app = express();
app.use(cors());
app.use(express.json({limit: "25MB"}));

///BD connection
async function getConnection() {
    //creary configurar la conexion
    const connection = await mysql.createConnection({
      host: process.env.DB_HOST,
      user: process.env.DB_USER,
      password: process.env.DB_PASS,
      database: process.env.DB_DATABASE
    });
  
    connection.connect();
    return connection;
  }

//init server/listener
  const serverPort = 4000;
  app.listen(serverPort, () => {
    console.log(`Server listening at http://localhost:${serverPort}`);
  });

//endpoints

//endpoint GET 
app.get("/api/books", async (req, res) =>{
    //getConnection
    const conn = await getConnection();
    //Query
    const queryBooks = "SELECT * FROM library";
    //Execute query
    const [results] = await conn.query(queryBooks);
    console.log(results);
  
    //End connection
    conn.end();
    //response
    res.json(results);
  });

//endpoint GET with id
