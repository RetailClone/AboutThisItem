import React from "react";
import "../styles/styles.css";

class QA extends React.Component {
  constructor() {
    super();
    this.state = {};
  }
  // feetch the
  render() {
    const { item } = this.props;
    return (
      <div>
        <h1>Q&A section</h1>
        <h2>Selected Item: {item}</h2>
      </div>
    );
  }
}

export default QA;
