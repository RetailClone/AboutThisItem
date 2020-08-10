import React from "react";
import "../styles/styles.css";
import Description from "./Description.jsx";
import Specs from "./Specs.jsx";
import Highlights from "./Highlights.jsx";
import ShipReturn from "./ShipReturn.jsx";
import QA from "./QA.jsx";
import { Tab, Tabs, TabList, TabPanel } from "react-tabs";

class App extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      selectedItem: "",
      itemDescription: "",
      itemSpecs: [],
      itemHighlights: [],
      shippingOptions: [],
      returnOptions: [],
      questions: [],
      show: false,
    };

    this.changeHandler = this.changeHandler.bind(this);
    this.submitHandler = this.submitHandler.bind(this);
    this.toggleDiv = this.toggleDiv.bind(this);
    this.showMore = this.showMore.bind(this);
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
    fetch(`http://localhost:1701/shipping/${this.state.selectedItem}`)
      .then((res) => res.json())
      .then((shippingData) => this.setState({ shippingOptions: shippingData }));
    fetch(`http://localhost:1701/returns/${this.state.selectedItem}`)
      .then((res) => res.json())
      .then((returnData) => this.setState({ returnOptions: returnData }));
    fetch(`http://localhost:1701/questions/${this.state.selectedItem}`)
      .then((res) => res.json())
      .then((questionData) => this.setState({ questions: questionData }));
  }

  toggleDiv() {
    const { show } = this.state;
    this.setState({ show: !show });
    var inputVal = document.getElementById("show");
    if (inputVal.innerHTML === "Show More") {
      inputVal.innerHTML = "Show Less";
    } else if (inputVal.innerHTML === "Show Less") {
      inputVal.innerHTML = "Show More";
    }
  }

  showMore() {
    const appClass = document.getElementById("app");
    if (appClass.className === "less") {
      appClass.className = "more";
    } else if (appClass.className === "more") {
      appClass.className = "less";
    }
  }

  render() {
    const {
      selectedItem,
      itemDescription,
      itemSpecs,
      itemHighlights,
      shippingOptions,
      returnOptions,
      questions,
      show,
    } = this.state;

    return (
      <div className="less" id="app">
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
        <Tabs defaultIndex={0}>
          <TabList>
            <Tab>Details</Tab>
            <Tab>Shipping & Returns</Tab>
            <Tab>Q&A</Tab>
          </TabList>
          <TabPanel>
            <Highlights highlights={itemHighlights} />
          </TabPanel>
          <TabPanel>
            <ShipReturn shipping={shippingOptions} returns={returnOptions} />
          </TabPanel>
          <TabPanel>
            <QA questions={questions} />
          </TabPanel>
        </Tabs>
        {show && (
          <Box itemSpecs={itemSpecs} itemDescription={itemDescription} />
        )}
        <button
          id="show"
          onClick={() => {
            this.toggleDiv();
            this.showMore();
          }}
        >
          Show More
        </button>
      </div>
    );
  }
}

class Box extends React.Component {
  render() {
    const { itemSpecs, itemDescription } = this.props;
    return (
      <div className="flex-container">
        <div className="flex-child specs">
          <Specs specs={itemSpecs} />
        </div>
        <div className="flex-child desc">
          <Description desc={itemDescription} />
        </div>
      </div>
    );
  }
}

export default App;
