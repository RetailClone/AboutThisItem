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
      return db.getQuestionsAsync(req.params.id);
    })
    .then((questions) => {
      results.questions = questions;
      return db.getAnswersAsync(req.params.id);
    })
    .then((answers) => {
      results.answers = answers;
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

// // post a new answer
// app.post("/", (req, res) => {
//   db.newAnswer(req.body, (err, results) => {
//     console.log("WRECK", req.body);
//     if (err) {
//       res.status(500).send(err);
//     } else {
//       res.status(200).send(results);
//     }
//   });
// });

app.listen(PORT, () => {
  console.log(`listening on port ${PORT}`);
});
