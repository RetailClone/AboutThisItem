import React from "react";
import ReactDOM from "react-dom";
import "./styles/styles.css";
import Description from "./components/Description.jsx";
import Specs from "./components/Specs.jsx";
import Highlights from "./components/Highlights.jsx";

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {};
  }

  render() {
    return (
      <div>
        <h1>About This Item</h1>
        <Description />
        <Specs />
        <Highlights />
      </div>
    );
  }
}

ReactDOM.render(<App />, document.getElementById("app"));
