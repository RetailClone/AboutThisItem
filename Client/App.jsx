import React from "react";
import ReactDOM from "react-dom";
import "./styles/styles.css";

class App extends React.Component {
  constructor() {
    super();
    this.state = {};
  }

  render() {
    return <div>Will it blend??</div>;
  }
}

ReactDOM.render(<App />, document.getElementById("app"));
