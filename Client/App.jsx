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
        <h1 id="about">About This Item</h1>
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

ReactDOM.render(<App />, document.getElementById("app"));
