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
      selectedItem: "",
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
      .then((res) => res.json())
      .then((data) => console.log("ITEM DESC?: ", data));
  }

  // this.setState({ itemDescription: data.item_description }
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
        <form onSubmit={this.submitHandler}>
          <label>
            Enter Product ID:
            <input
              type="text"
              value={selectedItem}
              onChange={this.changeHandler}
            />
          </label>
          <input type="submit" value="Submit" />
        </form>
        <Highlights highlights={itemHighlights} />
        <Description desc={itemDescription} />
        <Specs specs={itemSpecs} />
      </div>
    );
  }
}

ReactDOM.render(<App />, document.getElementById("app"));
