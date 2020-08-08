import React from "react";
import ReactDOM from "react-dom";
import "../styles/styles.css";
import Description from "./Description.jsx";
import Specs from "./Specs.jsx";
import Highlights from "./Highlights.jsx";

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
    fetch(`http://localhost:1701/description/${this.state.selectedItem}`)
      .then((res) => res.json())
      .then((descData) =>
        this.setState({ itemDescription: descData[0].item_description })
      );
    fetch(`http://localhost:1701/specs/${this.state.selectedItem}`)
      .then((res) => res.json())
      .then((specData) => this.setState({ itemSpecs: specData }));
    fetch(`http://localhost:1701/highlights/${this.state.selectedItem}`)
      .then((res) => res.json())
      .then((highlightData) =>
        this.setState({ itemHighlights: highlightData })
      );
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
        <form onSubmit={this.submitHandler}>
          <input
            type="text"
            placeholder="Enter Item ID#"
            value={selectedItem}
            onChange={this.changeHandler}
          />
          <input type="submit" value="Submit" />
        </form>
        <h1 id="about">About This Item</h1>
        <hr />
        <br />
        <br />
        <Highlights highlights={itemHighlights} />
        <div className="flex-container">
          <div className="flex-child specs">
            <Specs specs={itemSpecs} />
          </div>
          <div className="flex-child desc">
            <Description desc={itemDescription} />
          </div>
        </div>
      </div>
    );
  }
}

export default App;
