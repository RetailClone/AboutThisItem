import React from "react";
import ReactDOM from "react-dom";
import "./styles/styles.css";
import Description from "./components/Description.jsx";
import Specs from "./components/Specs.jsx";
import Highlights from "./components/Highlights.jsx";

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      selectedItem: null,
      itemDescription: "",
      itemSpecs: [],
      itemHighlights: [],
    };

    this.changeHandler = this.changeHandler.bind(this);
    this.submitHandler = this.submitHandler.bind(this);
  }

  // get a description displaying
  changeHandler(e) {
    // console.log("changeHandler: ", e.target.value);
    this.setState({ selectedItem: e.target.value });
  }

  submitHandler(e) {
    e.preventDefault();
    fetch(`http://localhost:1701/${this.state.selectedItem}`, { method: "GET" })
      .then((response) => response.json())
      .then((data) => this.setState({ itemDescription: data }));
  }

  render() {
    const {
      selectedItem,
      itemDescription,
      itemSpecs,
      itemHighlights,
    } = this.state;
    return (
      <div>
        <h1>About This Item</h1>
        <input
          type="number"
          placeholder="Enter Item #"
          onChange={this.changeHandler}
        ></input>
        <button type="submit" onSubmit={this.submitHandler}>
          Submit
        </button>
        <Highlights highlights={itemHighlights} />
        <Description desc={itemDescription} />
        <Specs specs={itemSpecs} />
      </div>
    );
  }
}

ReactDOM.render(<App />, document.getElementById("app"));
