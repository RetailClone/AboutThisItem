import React, { useState, useEffect } from "react";
import Answers from "./Answers.jsx";
import axios from "axios";

const Questions = ({ question, handleAnswer }) => {
  const [answers, setAnswers] = useState([]);
  const [answer, setAnswer] = useState("");
  const [screen_name, setScreen_name] = useState("");
  const [showAnswerForm, setShowAnswerForm] = useState(false);
  const [showAnswerButton, setShowAnswerButton] = useState(true);

  useEffect(() => {
    if (!showAnswerForm) {
      axios
        .get(`./answers/${question.id}`)
        .then((response) => setAnswers(response.data));
    }
  }, [showAnswerForm]);

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
  };

  return (
    <div>
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

export default Questions;
