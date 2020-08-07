const express = require('express');
const app = express();
const cors = require('cors');
const db = require('../Database/database');
const PORT = 1701;

// middleware
app.use(cors());
app.use(express.json());
app.use(express.static(__dirname + '/../Public'));

//get an iitem description
app.get('/:id', (req, res) => {
  db.getInfo(req.params.id, (err, results) => {
    if (err) {
      res.status(500).send(err);
      console.error("Server side get a description failure. Server.js line 17");
      return;
    } else {
      res.status(200).send(results);
    }
  })
})


app.listen(PORT, () => {
  // console.log("DIR", __dirname);
  console.log(`listening on port ${PORT}`);
});