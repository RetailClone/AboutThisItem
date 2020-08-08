import React, { Component } from "react";
import { Tab, Tabs } from "react-bootstrap";
import Tab1 from "./components/Tab1.jsx";
import Tab2 from "./components/Tab2.jsx";
import Tab3 from "./components/Tab3.jsx";

export default class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      activeTab: "More to consider",
      key: "more to consider",
    };
  }

  render() {
    const { key } = this.state;

    return (
      <Tabs
        id=""
        transition={false}
        activeKey={key}
        onSelect={(key) => this.setState({ key })}
      >
        <Tab eventKey="more to consider" title="More to consider">
          <Tab1 />
        </Tab>
        <Tab eventKey="similar items" title="Similar items">
          <Tab2 />
        </Tab>
        <Tab eventKey="guests also bought" title="Guests also bought">
          <Tab3 />
        </Tab>
      </Tabs>
    );
  }
}
