import React from "react";

const Answers = ({ answers }) => {
  // console.log("ANSWER DATA", answers);
  return (
    <div>
      <ul style={{ listStyleType: "none" }}>
        {answers.map((answer) => {
          return (
            <li id="AanswerText" key={answer.id}>
              A: {answer.answer}
              {answer.screen_name}
            </li>
          );
        })}
      </ul>
    </div>
  );
};

export default Answers;
