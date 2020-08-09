import React from "react";
import Question from "./Question.jsx";
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
        <Question />
      </div>
    );
  }
}

export default QA;
