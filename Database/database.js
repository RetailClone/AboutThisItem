const mysql = require('mysql');
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'sqlpassword',
  database: 'about_this_item'
});

// get the info!
const getInfo = (id, cb) => {
  const queryString = 'SELECT items.item_description, item_specs.specs, item_highlights.highlights FROM items INNER JOIN item_specs ON items.id = item_specs.item_id INNER JOIN item_highlights ON item_specs.item_id = item_highlights.item_id WHERE items.id = ?';
  connection.query(queryString, [id], (err, results) => {
    if (err) {
      cb(err, null);
      console.error("Could not get description from DB - database.js line 14");
      return;
    } else {
      cb(null, results)
    }
  })
}

connection.connect((err => {
  if (err) {
    console.log(`Couldn't connect to database`, err);
  } else {
    console.log(`Connected to mySQL database`);
  }
}));

module.exports = { getInfo }