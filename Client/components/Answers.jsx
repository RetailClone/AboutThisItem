import React from "react";
import moment from "moment";

const Answers = ({ answers }) => {
  return (
    <div>
      <ul style={{ listStyleType: "none" }}>
        {answers.map((answer) => {
          return (
            <li key={answer.id}>
              <span id="boldA">A:</span> {answer.answer}
              <div id="screen-name-text">
                {answer.screen_name} - {moment().startOf("hour").fromNow()}
              </div>
            </li>
          );
        })}
      </ul>
    </div>
  );
};

export default Answers;
