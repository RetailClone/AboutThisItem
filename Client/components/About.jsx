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
      selectedItem: window.product_id,
      itemDescription: "",
      itemSpecs: [],
      itemHighlights: [],
      shippingOptions: [],
      returnOptions: [],
      questions: [],
      answers: [],
    };

    this.selectAnItem = this.selectAnItem.bind(this);
    this.moreOrLess = this.moreOrLess.bind(this);
    this.buttonChange = this.buttonChange.bind(this);
    this.displayAnswerField = this.displayAnswerField.bind(this);
    this.cancelAnswerField = this.cancelAnswerField.bind(this);
    this.getItemData = this.getItemData.bind(this);
  }
  // get a description displaying
  selectAnItem(e) {
    this.setState({ selectedItem: e.target.value });
    this.getItemData(e.target.value);
  }

  componentDidMount() {
    this.getItemData(this.state.selectedItem);
  }

  // get all item data
  getItemData(id) {
    axios.get(`http://localhost:1701/${id}`).then((itemData) =>
      this.setState({
        itemDescription: itemData.data.desc[0].item_description,
        itemSpecs: itemData.data.specs,
        itemHighlights: itemData.data.highlights,
        shippingOptions: itemData.data.shippingOptions,
        returnOptions: itemData.data.returnOptions,
        questions: itemData.data.questions,
      })
    );
  }

  buttonChange() {
    let buttonText = document.getElementById("Ashow");
    if (buttonText.innerHTML === "Show More") {
      buttonText.innerHTML = "Show Less";
    } else if (buttonText.innerHTML === "Show Less") {
      buttonText.innerHTML = "Show More";
    }
  }

  moreOrLess() {
    let appClass = document.getElementById("Adetails");
    if (appClass.className === "Aless") {
      appClass.className = "Amore";
    } else if (appClass.className === "Amore") {
      appClass.className = "Aless";
    }
  }

  displayAnswerField() {
    let formDisplay = document.getElementById("AanswerForm");
    if (formDisplay.className === "AnoAnswerForm") {
      formDisplay.className = "AyesAnwerForm";
    }
    let answerButtonOnOff = document.getElementById("AanswerButton");
    if (answerButtonOnOff.className === "AanswerButtonOn") {
      answerButtonOnOff.className = "AanswerButtonOff";
    }
  }

  cancelAnswerField() {
    let formDisplay = document.getElementById("AanswerForm");
    if (formDisplay.className === "AyesAnswerForm") {
      formDisplay.className = "AnoAnwerForm";
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
        <div id="about-this-item">
          <form>
            <input
              type="text"
              placeholder="Enter Item ID#"
              value={selectedItem}
              onChange={this.selectAnItem}
            />
          </form>
          <h1 id="AappHeader">About This Item</h1>
          <Tabs defaultIndex={0}>
            <TabList>
              <Tab>Details</Tab>
              <Tab>Shipping & Returns</Tab>
              <Tab>Q&A</Tab>
            </TabList>
            <TabPanel>
              <div id="Adetails" className="Aless">
                <Highlights id="Ahighlights" highlights={itemHighlights} />
                <div className="Aflex-container">
                  <div className="Aflex-child specs">
                    <Specs specs={itemSpecs} />
                  </div>
                  <div className="Aflex-child desc">
                    <Description desc={itemDescription} />
                  </div>
                </div>
              </div>
              <button
                id="Ashow"
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
      </div>
    );
  }
}

export default About;
