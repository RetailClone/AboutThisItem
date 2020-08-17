import React, { useState, useEffect } from "react";
import Question from "./Question.jsx";
import axios from "axios";

const QA = ({ id }) => {
  const [questions, setQuestions] = useState([]);
  const [question, setQuestion] = useState("");
  const [showQuestionForm, setShowQuestionForm] = useState(false);
  const [showQuestionButton, setShowQuestionButton] = useState(true);

  useEffect(() => {
    axios.get(`./questions/${id}`).then((response) => {
      setQuestions(response.data);
    });
  }, [id]);

  const handleAnswer = (question_id, screen_name, answer) => {
    axios
      .post("/postAnswer", { question_id, screen_name, answer })
      .then((response) => console.log("AXIOS POST ANSWER RESPONSE", response));
  };

  const handleQuestion = (item_id, question) => {
    axios
      .post("/postQuestion", { item_id, question })
      .then((response) =>
        console.log("AXIOS POST QUESTION RESPONSE", response)
      );
  };

  const toggleQuestionField = (e) => {
    e.preventDefault();
    setShowQuestionForm(!showQuestionForm);
    setShowQuestionButton(!showQuestionButton);
  };

  const handleQuestionSubmit = (e) => {
    e.preventDefault();
    setShowQuestionForm(false);
    setShowQuestionButton(true);
    handleQuestion(question.id, question);
  };

  return (
    <div>
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
              onChange={(e) => setQuestion(e.target.value)}
              placeholder="question"
            />
          </div>
        </label>
        <p id="AanswerFormButtonText">
          by submitting I agree to the{" "}
          {<a href="http://localhost:1701/qaguidelines.html">q&a guidelines</a>}
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
  );
};

export default QA;
