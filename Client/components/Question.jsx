import React, { useState, useEffect } from "react";
import Answers from "./Answers.jsx";
import axios from "axios";

const Questions = ({ question, handleAnswer }) => {
  const [answers, setAnswers] = useState([]);
  const [answer, setAnswer] = useState("");
  const [answerInputValue, setAnswerInputValue] = useState("");
  const [screen_nameInputValue, setScreen_nameInputValue] = useState("");
  const [screen_name, setScreen_name] = useState("");
  const [showAnswerForm, setShowAnswerForm] = useState(false);
  const [showAnswerButton, setShowAnswerButton] = useState(true);

  useEffect(() => {
    if (!showAnswerForm) {
      axios
        .get(
          `http://ec2-18-191-7-97.us-east-2.compute.amazonaws.com:1701/answers/${question.id}`
        )
        .then((response) => setAnswers(response.data));
    }
  }, [showAnswerForm]);

  const handleAnswerChange = (e) => {
    setAnswer(e.target.value);
    setAnswerInputValue(e.target.value);
  };

  const handleScreenNameChange = (e) => {
    setScreen_name(e.target.value);
    setScreen_nameInputValue(e.target.value);
  };

  const toggleAnswerField = (e) => {
    e.preventDefault();
    setShowAnswerForm(!showAnswerForm);
    setShowAnswerButton(!showAnswerButton);
  };

  const handleAnswerSubmit = (e) => {
    e.preventDefault();
    setAnswerInputValue("");
    setScreen_nameInputValue("");
    setShowAnswerForm(false);
    setShowAnswerButton(true);
    handleAnswer(question.id, screen_name, answer);
  };

  return (
    <div id="question-container">
      <li className="question-text" key={question.id}>
        Q: {question.question}
      </li>
      <Answers answers={answers} />
      <button
        id="AanswerButton"
        className={showAnswerButton ? "AanswerButtonOn" : "AanswerButtonOff"}
        onClick={toggleAnswerField}
      >
        Answer It
      </button>
      <form
        id="AanswerForm"
        className={showAnswerForm ? "AyesAnswerForm" : "AnoAnswerForm"}
        onSubmit={handleAnswerSubmit}
      >
        <label>
          <h2>your answer</h2>
          <div id="AanswerTextFields">
            <input
              id="AanswerField"
              type="text"
              name={answer}
              onChange={handleAnswerChange}
              value={answerInputValue}
              // onChange={(e) => setAnswer(e.target.value)}
              placeholder="answer"
            />
            <input
              id="AscreenNameField"
              type="text"
              name={screen_name}
              onChange={handleScreenNameChange}
              value={screen_nameInputValue}
              // onChange={(e) => setScreen_name(e.target.value)}
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

export default Questions;
