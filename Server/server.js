const express = require('express');
const app = express();
const cors = require('cors');
const db = require('../Database/database');
const PORT = 1701;

// middleware
app.use(cors());
app.use(express.json());
app.use(express.static(__dirname + '/../Public'));


app.listen(PORT, () => {
  console.log("DIR", __dirname);
  console.log(`listening on port ${PORT}`);
});