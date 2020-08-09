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
};
