import React from "react";
import "../styles/styles.css";

const QA = ({ item, questions, display, cancel }) => {
  // const [item, cancel] = useState(item, cancel);
  // TODO - implement react hooks to handle form submissions in this functional component Dani suggested setState() and useEffect() (which is similar to component did mount)

  return (
    <div id="Aquestions">
      <ul style={{ listStyleType: "none" }}>
        {questions.map((question, idx) => {
          return (
            <li id="AquestionText" key={idx}>
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
          <input
            id="AcancelSubmitAnswer"
            type="submit"
            value="cancel"
            onClick={cancel}
          />
          <input id="AsubmitAnswer" type="submit" value="submit answer" />
        </div>
      </form>
    </div>
  );
};

export default QA;
