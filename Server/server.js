const express = require("express");
const app = express();
const cors = require("cors");
const Promise = require("bluebird");
// promisifies all of the db requests
const db = Promise.promisifyAll(require("../Database/database"));
const PORT = 1701;

// middleware
app.use(cors());
app.use(express.json());
app.use(express.static(__dirname + "/../Public"));

// get answers to a specific question
app.get("/answers/:id", (req, res) => {
  db.getAnswers(req.params.id, (err, results) => {
    if (err) {
      res.status(500).send(err);
    } else {
      res.status(200).send(results);
    }
  });
});

// get questions
app.get("/questions/:id", (req, res) => {
  db.getQuestions(req.params.id, (err, results) => {
    if (err) {
      res.status(500).send(err);
    } else {
      res.status(200).send(results);
    }
  });
});
//get all data about an item asynchronously using promise chain
app.get("/:id", (req, res) => {
  const results = {};
  db.getDescAsync(req.params.id)
    .then((desc) => {
      results.desc = desc;
      return db.getSpecsAsync(req.params.id);
    })
    .then((specs) => {
      results.specs = specs;
      return db.getHighlightsAsync(req.params.id);
    })
    .then((highlights) => {
      results.highlights = highlights;
      return db.getShippingOptionsAsync(req.params.id);
    })
    .then((shippingOptions) => {
      results.shippingOptions = shippingOptions;
      return db.getReturnOptionsAsync(req.params.id);
    })
    .then((returnOptions) => {
      results.returnOptions = returnOptions;
      res.status(200).send(results);
    })
    .catch((err) => {
      console.error(
        "Server failed to get info from DB - Server.js line 48",
        err
      );
      res.status(500).send("Bad server response chain");
    });
});

// post a new answer
app.post("/", (req, res) => {
  db.newAnswer(req.body, (err, results) => {
    if (err) {
      res.status(500).send(err);
    } else {
      res.status(200).send(results);
    }
  });
});

app.listen(PORT, () => {
  console.log(`listening on port ${PORT}`);
});
