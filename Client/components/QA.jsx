import React, { useState } from "react";
import Answers from "./Answers.jsx";
import axios from "axios";

const QA = ({ questions, answers }) => {
  //axios post request
  const [answer, setAnswer] = useState("");
  const [screen_name, setScreen_name] = useState("");
  const [question_id, setQuestion_id] = useState("");

  const toggleAnswerField = (e) => {
    e.preventDefault();
    let formDisplay = document.getElementById("AanswerForm");
    if (formDisplay.className === "AnoAnswerForm") {
      formDisplay.className = "AyesAnswerForm";
    } else if (formDisplay.className === "AyesAnswerForm") {
      formDisplay.className = "AnoAnswerForm";
    }
    let answerButtonOnOff = document.getElementById("AanswerButton");
    if (answerButtonOnOff.className === "AanswerButtonOn") {
      answerButtonOnOff.className = "AanswerButtonOff";
    } else if (answerButtonOnOff.className === "AanswerButtonOff") {
      answerButtonOnOff.className = "AanswerButtonOn";
    }
  };

  console.log("Question ID??", document.getElementById("spooky"));

  const answerIt = (e) => {
    e.preventDefault();
    // setQuestion_id(document.getElementById("qID"));
    axios
      .post("/", { answer, screen_name, question_id })
      .then((response) => console.log("AXIOS POST RESPONSE", response));
    let formDisplay = document.getElementById("AanswerForm");
    if (formDisplay.className === "AyesAnswerForm") {
      formDisplay.className = "AnoAnswerForm";
    }
    let answerButtonOnOff = document.getElementById("AanswerButton");
    if (answerButtonOnOff.className === "AanswerButtonOff") {
      answerButtonOnOff.className = "AanswerButtonOn";
    }
  };

  return (
    <div id="Aquestions">
      <ul style={{ listStyleType: "none" }}>
        {questions.map((question) => {
          return (
            <li className="AquestionText" key={question.id}>
              <div id="spooky">{question.id}</div>
              Q: {question.question}
            </li>
          );
        })}
      </ul>
      <Answers answers={answers} />
      <button
        id="AanswerButton"
        className="AanswerButtonOn"
        onClick={toggleAnswerField}
      >
        Answer It
      </button>
      <form id="AanswerForm" className="AnoAnswerForm" onSubmit={answerIt}>
        <label>
          <h2>your answer</h2>
          <div id="AanswerTextFields">
            <input
              id="AanswerField"
              type="text"
              name={answer}
              onChange={(e) => setAnswer(e.target.value)}
              placeholder="answer"
            />
            <input
              id="AscreenNameField"
              type="text"
              name={screen_name}
              onChange={(e) => setScreen_name(e.target.value)}
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
          <button id="AcancelSubmitAnswer" onClick={toggleAnswerField}>
            cancel
          </button>
          <input id="AsubmitAnswer" type="submit" value="submit answer" />
        </div>
      </form>
    </div>
  );
};

export default QA;
