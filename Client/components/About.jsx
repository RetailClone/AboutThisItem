import React from "react";
import "../styles/styles.css";
import axios from "axios";
import Description from "./Description.jsx";
import Specs from "./Specs.jsx";
import Highlights from "./Highlights.jsx";
import ShipReturn from "./ShipReturn.jsx";
import QA from "./QA.jsx";
import Answers from "./Answers.jsx";
import { Tab, Tabs, TabList, TabPanel } from "react-tabs";

class About extends React.Component {
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
    this.setState({ selectedItem: e.target.value });
  }

  submitHandler(e) {
    e.preventDefault();
    axios
      .get(`http://localhost:1701/description/${this.state.selectedItem}`)
      .then((descData) =>
        this.setState({ itemDescription: descData.data[0].item_description })
      )
      .catch((error) => {
        console.error(error);
      });
    axios
      .get(`http://localhost:1701/specs/${this.state.selectedItem}`)
      .then((specData) => this.setState({ itemSpecs: specData.data }))
      .catch((error) => {
        console.error(error);
      });
    axios
      .get(`http://localhost:1701/highlights/${this.state.selectedItem}`)
      .then((highlightData) =>
        this.setState({ itemHighlights: highlightData.data })
      )
      .catch((error) => {
        console.error(error);
      });
    axios
      .get(`http://localhost:1701/shipping/${this.state.selectedItem}`)
      .then((shippingData) =>
        this.setState({ shippingOptions: shippingData.data })
      )
      .catch((error) => {
        console.error(error);
      });
    axios
      .get(`http://localhost:1701/returns/${this.state.selectedItem}`)
      .then((returnData) => this.setState({ returnOptions: returnData.data }))
      .catch((error) => {
        console.error(error);
      });
    axios
      .get(`http://localhost:1701/questions/${this.state.selectedItem}`)
      .then((questionData) => this.setState({ questions: questionData.data }))
      .catch((error) => {
        console.error(error);
      });
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
        <h1 id="appHeader">About This Item</h1>
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
              item={selectedItem}
              questions={questions}
              display={() => this.displayAnswerField()}
              cancel={() => this.cancelAnswerField()}
            />
            <Answers answers={answers} />
          </TabPanel>
        </Tabs>
      </div>
    );
  }
}

export default About;
