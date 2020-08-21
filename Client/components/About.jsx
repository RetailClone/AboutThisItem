//import all necessary items and dependencies
import React from "react";
import "../styles/styles.css";
import "../styles/react-tabs.css";
import axios from "axios";
import Description from "./Description.jsx";
import Specs from "./Specs.jsx";
import Highlights from "./Highlights.jsx";
import ShipReturn from "./ShipReturn.jsx";
import QA from "./QA.jsx";
import { Tab, Tabs, TabList, TabPanel } from "react-tabs";

// sets default baseURL for ALL axios reqs
axios.defaults.baseURL =
  "http://ec2-18-191-7-97.us-east-2.compute.amazonaws.com:1701";

class About extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      // set state of selected item to grab the product_id from the window or 1, whichever is available
      selectedItem: window.product_id || 1,
      itemDescription: "",
      itemSpecs: [],
      itemHighlights: [],
      shippingOptions: [],
      returnOptions: [],
      questions: [],
    };

    this.moreOrLess = this.moreOrLess.bind(this);
    this.buttonChange = this.buttonChange.bind(this);
    this.getItemData = this.getItemData.bind(this);
  }

  componentDidMount() {
    this.getItemData(window.product_id || 1);
    this.setState({ selectedItem: window.product_id || 1 });
  }

  // get all item data
  getItemData() {
    axios.get(`./${this.state.selectedItem}`).then((itemData) =>
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

  // changes the display of the show more/show less button
  buttonChange() {
    let buttonText = document.getElementById("Ashow");
    if (buttonText.innerHTML === "Show More") {
      buttonText.innerHTML = "Show Less";
    } else if (buttonText.innerHTML === "Show Less") {
      buttonText.innerHTML = "Show More";
    }
  }

  // toggles the show more/less on the details page
  moreOrLess() {
    let appClass = document.getElementById("Adetails");
    if (appClass.className === "Aless") {
      appClass.className = "Amore";
    } else if (appClass.className === "Amore") {
      appClass.className = "Aless";
    }
  }

  render() {
    // deconstruct stateful items for clarity
    const {
      selectedItem,
      itemDescription,
      itemSpecs,
      itemHighlights,
      shippingOptions,
      returnOptions,
      questions,
    } = this.state;

    return (
      <div id="about-this-item-outer-container">
        <div id="about-this-item">
          <h1 id="AappHeader">About This Item</h1>
          <Tabs defaultIndex={0}>
            <TabList>
              <Tab>Details</Tab>
              <Tab>Shipping & Returns</Tab>
              <Tab>Q&A ({questions.length})</Tab>
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
              <QA id={selectedItem} />
            </TabPanel>
          </Tabs>
        </div>
      </div>
    );
  }
}

export default About;
