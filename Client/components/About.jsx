import React from "react";
import "../styles/styles.css";
import "../../node_modules/react-tabs/style/react-tabs.css";
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
      selectedItem: window.product_idå,
      itemDescription: "",
      itemSpecs: [],
      itemHighlights: [],
      shippingOptions: [],
      returnOptions: [],
      questions: [],
    };

    this.selectAnItem = this.selectAnItem.bind(this);
    this.moreOrLess = this.moreOrLess.bind(this);
    this.buttonChange = this.buttonChange.bind(this);
    this.getItemData = this.getItemData.bind(this);
  }

  // get a description displaying
  selectAnItem(e) {
    this.setState({ selectedItem: e.target.value });
    this.getItemData(e.target.value);
  }

  componentDidMount() {
    this.getItemData(1);
    this.setState({ selectedItem: window.product_id });
  }

  // get all item data
  getItemData(id) {
    axios.get(`./${id}`).then((itemData) =>
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

  render() {
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
          {/* <form>
            <input
              type="text"
              placeholder="Enter Item ID#"
              value={selectedItem}
              onChange={this.selectAnItem}
            />
          </form> */}
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
