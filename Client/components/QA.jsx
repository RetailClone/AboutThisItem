import React, { useState, useEffect } from "react";
import Question from "./Question.jsx";
import axios from "axios";

const QA = ({ id }) => {
  let [questions, setQuestions] = useState([]);
  let [inputValue, setInputValue] = useState("");
  let [question, setQuestion] = useState("");
  let [showQuestionForm, setShowQuestionForm] = useState(false);
  let [showQuestionButton, setShowQuestionButton] = useState(true);

  // grabs the list of questions and renders upon loading the page
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

  // keeps the top of the div stable when the ask a question button is clicked
  useEffect(() => {
    if (!showQuestionButton) {
      document.getElementById("about").scrollIntoView();
    }
  }, [showQuestionButton]);

  // posts a new question and then immediately turns around and does another get request so the question will display on the page immediately
  const handleQuestion = (item_id, question) => {
    axios.post("./postQuestion", { item_id, question }).then(() => {
      axios
        .get(`./questions/${item_id}`)
        .then((response) => {
          setQuestions(response.data);
        })
        .catch((err) => console.error(err));
    });
  };

  // keeps track of what is typed in the question field in two places, setInputValue is cleared once the form is submitted so whatever is typed in doesn't linger
  const handleQuestionChange = (e) => {
    setQuestion(e.target.value);
    setInputValue(e.target.value);
  };

  // shows and hides the question field altogether. It is invoked both on "Ask a question" and "cancel"
  const toggleQuestionField = (e) => {
    e.preventDefault();
    setShowQuestionForm(!showQuestionForm);
    setShowQuestionButton(!showQuestionButton);
  };

  // toggles the question form and button, sends args to the handleQuestion func, and clears the input value
  const handleQuestionSubmit = (e) => {
    e.preventDefault();
    setShowQuestionForm(false);
    setShowQuestionButton(true);
    handleQuestion(id, question);
    setInputValue("");
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
                timeStamp={question.created_at}
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
          <h2 className="your-question-and-answer-text">Your question</h2>
        </label>
        <div id="question-text-fields">
          <input
            id="question-field"
            type="textarea"
            name={question}
            onChange={handleQuestionChange}
            // onChange={(e) => setQuestion(e.target.value)}
            value={inputValue}
            placeholder="question"
            pattern="[a-zA-Z0-9'?!, .]{1,2000}"
            title="Only alphanumeric and basic punctuation, please. Please use less than 2000 characters."
          />
        </div>
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
