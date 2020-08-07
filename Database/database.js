const mysql = require('mysql');
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'sqlpassword',
  database: 'about_this_item'
});

// get item description
const getDesc = (id, cb) => {
  const queryString = 'SELECT item_description FROM items WHERE category_id = ?';
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
// get item specs
// get item highlights

connection.connect((err => {
  if (err) {
    console.log(`Couldn't connect to database`, err);
  } else {
    console.log(`Connected to mySQL database`);
  }
}));

module.exports = { getDesc }