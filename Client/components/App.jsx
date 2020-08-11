import React from "react";
import "../styles/styles.css";
import Description from "./Description.jsx";
import Specs from "./Specs.jsx";
import Highlights from "./Highlights.jsx";
import ShipReturn from "./ShipReturn.jsx";
import QA from "./QA.jsx";
import Answers from "./Answers.jsx";
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
      answers: [],
    };

    this.changeHandler = this.changeHandler.bind(this);
    this.submitHandler = this.submitHandler.bind(this);
    this.moreOrLess = this.moreOrLess.bind(this);
    this.buttonChange = this.buttonChange.bind(this);
    this.displayAnswerField = this.displayAnswerField.bind(this);
    this.cancelAnswerField = this.cancelAnswerField.bind(this);
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

  buttonChange() {
    let buttonText = document.getElementById("show");
    if (buttonText.innerHTML === "Show More") {
      buttonText.innerHTML = "Show Less";
    } else if (buttonText.innerHTML === "Show Less") {
      buttonText.innerHTML = "Show More";
    }
  }

  moreOrLess() {
    let appClass = document.getElementById("details");
    if (appClass.className === "less") {
      appClass.className = "more";
    } else if (appClass.className === "more") {
      appClass.className = "less";
    }
  }

  displayAnswerField() {
    let formDisplay = document.getElementById("answerForm");
    if (formDisplay.className === "noAnswerForm") {
      formDisplay.className = "yesAnwerForm";
    }
    let answerButtonOnOff = document.getElementById("answerButton");
    if (answerButtonOnOff.className === "answerButtonOn") {
      answerButtonOnOff.className = "answerButtonOff";
    }
  }

  cancelAnswerField() {
    let formDisplay = document.getElementById("answerForm");
    if (formDisplay.className === "yesAnswerForm") {
      formDisplay.className = "noAnwerForm";
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
      answers,
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
        <Tabs defaultIndex={0}>
          <TabList>
            <Tab>Details</Tab>
            <Tab>Shipping & Returns</Tab>
            <Tab>Q&A</Tab>
          </TabList>
          <TabPanel>
            <div id="details" className="less">
              <Highlights id="highlights" highlights={itemHighlights} />
              <div className="flex-container">
                <div className="flex-child specs">
                  <Specs specs={itemSpecs} />
                </div>
                <div className="flex-child desc">
                  <Description desc={itemDescription} />
                </div>
              </div>
            </div>
            <button
              id="show"
              onClick={() => {
                this.moreOrLess();
                this.buttonChange();
              }}
            >
              Show More
            </button>
          </TabPanel>
          <TabPanel>
            <ShipReturn shipping={shippingOptions} returns={returnOptions} />
          </TabPanel>
          <TabPanel>
            <QA
              questions={questions}
              display={() => this.displayAnswerField()}
            />
            <Answers answers={answers} />
          </TabPanel>
        </Tabs>
      </div>
    );
  }
}

export default App;
