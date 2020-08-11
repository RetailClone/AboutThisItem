import React from "react";
import "../styles/styles.css";

const QA = ({ item, questions, display, cancel }) => {
  return (
    <div id="questions">
      <ul style={{ listStyleType: "none" }}>
        {questions.map((question, idx) => {
          return (
            <li id="questionText" key={idx}>
              Q: {question.question}
            </li>
          );
        })}
      </ul>
      <button id="answerButton" className="answerButtonOn" onClick={display}>
        Answer It
      </button>
      <form id="answerForm" className="noAnswerForm">
        <label>
          <h2>your answer</h2>
          <div id="answerTextFields">
            <input
              id="answerField"
              type="text"
              name="answer"
              placeholder="answer"
            />
            <input
              id="screenNameField"
              type="text"
              name="screenName"
              placeholder="screen name"
            />
            <p>this name will be displayed with your answer</p>
          </div>
        </label>
        <p id="answerFormButtonText">
          by submitting I agree to the{" "}
          {<a href="http://localhost:1701/qaguidelines.html">q&a guidelines</a>}
        </p>
        <div id="answerFormSubmitButtons">
          <input
            id="cancelSubmitAnswer"
            type="submit"
            value="cancel"
            onClick={cancel}
          />
          <input id="submitAnswer" type="submit" value="submit answer" />
        </div>
      </form>
    </div>
  );
};

export default QA;
