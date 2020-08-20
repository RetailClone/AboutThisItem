import React, { useState, useEffect } from "react";
import Question from "./Question.jsx";
import axios from "axios";

const QA = ({ id }) => {
  const [questions, setQuestions] = useState([]);
  const [inputValue, setInputValue] = useState("");
  const [question, setQuestion] = useState("");
  const [showQuestionForm, setShowQuestionForm] = useState(false);
  const [showQuestionButton, setShowQuestionButton] = useState(true);

  useEffect(() => {
    if (!showQuestionForm) {
      axios
        .get(`./questions/${id}`)
        .then((response) => {
          setQuestions(response.data);
        })
        .catch((err) => console.error(err));
    }
  }, [id, showQuestionForm]);

  const handleAnswer = (question_id, screen_name, answer) => {
    axios
      .post("./postAnswer", { question_id, screen_name, answer })
      .catch((err) => console.error(err));
  };

  const handleQuestion = (item_id, question) => {
    axios
      .post("./postQuestion", { item_id, question })
      .catch((err) => console.error(err));
  };

  const handleQuestionChange = (e) => {
    setQuestion(e.target.value);
    setInputValue(e.target.value);
  };

  const toggleQuestionField = (e) => {
    e.preventDefault();
    setShowQuestionForm(!showQuestionForm);
    setShowQuestionButton(!showQuestionButton);
  };

  const handleQuestionSubmit = (e) => {
    e.preventDefault();
    setInputValue("");
    setShowQuestionForm(false);
    setShowQuestionButton(true);
    handleQuestion(id, question);
  };

  return (
    <div id="question-and-answer-container">
      <div id="Aquestions">
        <ul style={{ listStyleType: "none" }}>
          {questions.map((question) => {
            return (
              <Question
                key={question.id}
                question={question}
                handleAnswer={handleAnswer}
              />
            );
          })}
        </ul>
      </div>
      <form
        id="question-form"
        className={showQuestionForm ? "yes-question-form" : "no-question-form"}
        onSubmit={handleQuestionSubmit}
      >
        <label>
          <h2>Your question</h2>
          <div id="question-text-fields">
            <input
              id="question-field"
              type="text"
              name={question}
              onChange={handleQuestionChange}
              // onChange={(e) => setQuestion(e.target.value)}
              value={inputValue}
              placeholder="question"
            />
          </div>
        </label>
        <p id="AanswerFormButtonText">
          by submitting I agree to the{" "}
          {
            <a href="http://ec2-18-191-7-97.us-east-2.compute.amazonaws.com:1701/qaguidelines.html">
              q&a guidelines
            </a>
          }
        </p>
        <div id="question-form-submit-buttons">
          <button
            id="cancel-submit-answer-button"
            onClick={toggleQuestionField}
          >
            cancel
          </button>
          <input id="submit-question" type="submit" value="submit question" />
        </div>
      </form>
      <div id="ask-a-question-button-container">
        <button
          id="question-submit-button"
          className={
            showQuestionButton ? "yes-question-button" : "no-question-button"
          }
          type="submit"
          onClick={toggleQuestionField}
        >
          Ask a question
        </button>
      </div>
    </div>
  );
};
export default QA;
