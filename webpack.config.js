const path = require("path");

module.exports = {
  entry: path.join(__dirname, "Client", "Index.jsx"),
  module: {
    rules: [
      {
        test: [/\.jsx$/],
        exclude: /node_modules/,
        use: {
          loader: "babel-loader",
          options: {
            presets: ["@babel/preset-react", "@babel/preset-env"],
          },
        },
      },
      {
        test: /\.css$/i,
        use: ["style-loader", "css-loader"],
      },
    ],
  },
  watchOptions: {
    poll: true,
    ignored: /node_modules/,
  },
  output: {
    filename: "bundle.js",
    path: path.join(__dirname, "Public"),
  },
};
