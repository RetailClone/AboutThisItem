import React, { useState, useEffect } from "react";
import Answers from "./Answers.jsx";
import axios from "axios";
import moment from "moment";

const Question = ({ question, timeStamp }) => {
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
        .get(`./answers/${question.id}`)
        .then((response) => setAnswers(response.data))
        .catch((err) => console.error(err));
    }
  }, [showAnswerForm]);

  const handleAnswer = (question_id, screen_name, answer) => {
    axios
      .post("./postAnswer", { question_id, screen_name, answer })
      .then(() => {
        axios
          .get(`./answers/${question.id}`)
          .then((response) => setAnswers(response.data))
          .catch((err) => console.error(err));
      });
  };

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
    setShowAnswerForm(false);
    setShowAnswerButton(true);
    handleAnswer(question.id, screen_name, answer);
    setAnswerInputValue("");
    setScreen_nameInputValue("");
  };

  return (
    <div id="question-container">
      <li className="about-content-text" key={question.id}>
        <span id="question-text">Q: {question.question}</span>
        <div className="time-stamp-text">-{moment(timeStamp).fromNow()}</div>
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
          <h2 className="your-question-and-answer-text">your answer</h2>
        </label>
        <div id="AanswerTextFields">
          <input
            id="AanswerField"
            type="text"
            name={answer}
            onChange={handleAnswerChange}
            value={answerInputValue}
            // onChange={(e) => setAnswer(e.target.value)}
            placeholder="answer"
            pattern="[a-zA-Z0-9?!, .]{0,1000}"
            title="Only alphanumeric and basic punctuation, please. Please use less than 1000 characters."
          />
          <input
            id="AscreenNameField"
            type="text"
            name={screen_name}
            onChange={handleScreenNameChange}
            value={screen_nameInputValue}
            // onChange={(e) => setScreen_name(e.target.value)}
            placeholder="screen name"
            pattern="[a-zA-Z0-9?!, .]{0,50}"
            title="Only alphanumeric and basic punctuation, please. Please use less than 50 characters."
          />
          <p className="about-content-text">
            this name will be displayed with your answer
          </p>
        </div>
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

export default Question;
