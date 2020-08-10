import React from "react";
import "../styles/styles.css";

const QA = ({ questions }) => {
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
      <button id="answerButton">Answer It</button>
      <form id="answerForm">
        <label>
          <h2>your answer</h2>
          <input id="answerField" type="text" name="answer" />
          <input
            id="screenNameField"
            type="text"
            name="screenName"
            placeholder="screen name"
          />
        </label>
        <div id="answerFormSubmitButtons">
          <input id="cancelSubmitAnswer" type="submit" value="Cancel" />
          <input id="submitAnswer" type="submit" value="Submit Answer" />
        </div>
      </form>
    </div>
  );
};

export default QA;
