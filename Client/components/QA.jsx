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
        <form>
          <input id="answerButton" type="submit" value="Answer It" />
        </form>
      </ul>
    </div>
  );
};

export default QA;
