const mysql = require("mysql");
const mysqlConfig = require("./dbconfig.js");
const connection = mysql.createConnection(mysqlConfig);

// get the description
const getDesc = (id, cb) => {
  const queryString = "SELECT item_description FROM items WHERE id = ?";
  connection.query(queryString, [id], (err, results) => {
    if (err) {
      cb(err, null);
      console.error("Could not get description from DB - database.js line 11");
      return;
    } else {
      cb(null, results);
    }
  });
};

//get specs
const getSpecs = (id, cb) => {
  const queryString = "SELECT specs FROM item_specs WHERE item_id = ?";
  connection.query(queryString, [id], (err, results) => {
    if (err) {
      cb(err, null);
      console.error("Could not get specs from DB - database.js line 25");
      return;
    } else {
      cb(null, results);
    }
  });
};

//get highlights
const getHighlights = (id, cb) => {
  const queryString =
    "SELECT highlights FROM item_highlights WHERE item_id = ?";
  connection.query(queryString, [id], (err, results) => {
    if (err) {
      cb(err, null);
      console.error("Could not get highlights from DB - database.js line 40");
      return;
    } else {
      cb(null, results);
    }
  });
};

//get shipping options
const getShippingOptions = (id, cb) => {
  const queryString =
    "SELECT shipping_details FROM shipping_options WHERE item_id = ?";
  connection.query(queryString, [id], (err, results) => {
    if (err) {
      cb(err, null);
      console.error(
        "Could not get shipping details from DB - database.js line 56"
      );
      return;
    } else {
      cb(null, results);
    }
  });
};

//get return options
const getReturnOptions = (id, cb) => {
  const queryString =
    "SELECT return_details FROM return_options WHERE item_id = ?";
  connection.query(queryString, [id], (err, results) => {
    if (err) {
      cb(err, null);
      console.error(
        "Could not get return details from DB - database.js line 73"
      );
      return;
    } else {
      cb(null, results);
    }
  });
};

//get questions
const getQuestions = (id, cb) => {
  const queryString =
    "SELECT question, id, item_id FROM questions WHERE item_id = ?";
  connection.query(queryString, [id], (err, results) => {
    if (err) {
      cb(err, null);
      console.error("Could not get questions from DB - database.js line 89");
      return;
    } else {
      cb(null, results);
    }
  });
};

//get the answers
const getAnswers = (id, cb) => {
  const queryString =
    "SELECT id, question_id, screen_name, answer FROM answers WHERE question_id = ?";
  connection.query(queryString, [id], (err, results) => {
    if (err) {
      cb(err, null);
      console.error("Could not get answers from DB - database.js line 104");
      return;
    } else {
      cb(null, results);
    }
  });
};

//post a new answer
const newAnswer = (data, cb) => {
  const { question_id, screen_name, answer } = data;
  {
    console.log(data);
  }
  const queryString =
    "INSERT INTO answers (question_id, screen_name, answer) VALUES (?, ?, ?)";
  connection.query(
    queryString,
    [question_id, screen_name, answer],
    (err, results) => {
      if (err) {
        cb(err, null);
        console.error(
          "Could not insert answers into DB - database.js line 127"
        );
      } else {
        cb(null, results);
      }
    }
  );
};

//post a new question
const newQuestion = (data, cb) => {
  const queryString = "INSERT INTO questions (item_id, question) VALUES (?, ?)";
  connection.query(queryString, [item_id, question], (err, results) => {
    if (err) {
      cb(err, null);
      console.error(
        "Could not insert a new question into DB - database.js line 142"
      );
    } else {
      cb(null, results);
    }
  });
};

//connection test
connection.connect((err) => {
  if (err) {
    console.log(`Couldn't connect to database`, err);
  } else {
    console.log(`Connected to mySQL database`);
  }
});

module.exports = {
  getDesc,
  getSpecs,
  getHighlights,
  getShippingOptions,
  getReturnOptions,
  getQuestions,
  getAnswers,
  newAnswer,
  newQuestion,
};
