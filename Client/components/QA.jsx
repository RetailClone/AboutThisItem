import React from "react";
import "../styles/styles.css";

const QA = ({ questions, display, cancel, submitAnswer }) => {
  //axios post request

  return (
    <div id="Aquestions">
      <ul style={{ listStyleType: "none" }}>
        {questions.map((question) => {
          {
            console.log("QUESTION", question.question, question.id);
          }
          return (
            <li id="AquestionText" key={question.id}>
              Q: {question.question}
            </li>
          );
        })}
      </ul>
      <button id="AanswerButton" className="AanswerButtonOn" onClick={display}>
        Answer It
      </button>
      <form id="AanswerForm" className="AnoAnswerForm">
        <label>
          <h2>your answer</h2>
          <div id="AanswerTextFields">
            <input
              id="AanswerField"
              type="text"
              name="answer"
              placeholder="answer"
            />
            <input
              id="AscreenNameField"
              type="text"
              name="screenName"
              placeholder="screen name"
            />
            <p>this name will be displayed with your answer</p>
          </div>
        </label>
        <p id="AanswerFormButtonText">
          by submitting I agree to the{" "}
          {<a href="http://localhost:1701/qaguidelines.html">q&a guidelines</a>}
        </p>
        <div id="AanswerFormSubmitButtons">
          <button id="AcancelSubmitAnswer" onClick={cancel}>
            cancel
          </button>
          <button id="AsubmitAnswer" type="submit" onClick={submitAnswer}>
            submit answer
          </button>
        </div>
      </form>
    </div>
  );
};

export default QA;
