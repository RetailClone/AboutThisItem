import React, { useState, useEffect } from "react";
import Question from "./Question.jsx";
import axios from "axios";

const QA = ({ id }) => {
  const [questions, setQuestions] = useState([]);

  // TODO explicit aws route `http://ec2-3-129-250-209.us-east-2.compute.amazonaws.com:1701/${id}`
  useEffect(() => {
    axios.get(`./questions/${id}`).then((response) => {
      setQuestions(response.data);
    });
  }, [id]);

  const handleAnswer = (question_id, screen_name, answer) => {
    axios
      .post("/", { question_id, screen_name, answer })
      .then((response) => console.log("AXIOS POST RESPONSE", response));
  };

  return (
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
  );
};

export default QA;
