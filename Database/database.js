const mysql = require('mysql');
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'sqlpassword',
  database: 'about_this_item'
});

connection.connect((err => {
  if (err) {
    console.log(`Couldn't connect to database`, err);
  } else {
    console.log(`Connected to mySQL database`);
  }
}));

