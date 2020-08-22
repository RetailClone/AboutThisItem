import React from "react";
import moment from "moment";

const Answers = ({ answers }) => {
  return (
    <div>
      <ul style={{ listStyleType: "none" }}>
        {answers.map((answer) => {
          return (
            <li key={answer.id}>
              <span id="boldA">A:</span>
              <span className="about-content-text"> {answer.answer}</span>
              <div id="screen-name-text">
                {answer.screen_name} - {moment(answer.created_at).fromNow()}
              </div>
            </li>
          );
        })}
      </ul>
    </div>
  );
};

export default Answers;
