import React from "react";

const Specs = ({ specs }) => {
  // console.log(specs);
  return (
    <div id="specs">
      <h2>Want some specs?</h2>
      <ul style={{ listStyleType: "none" }}>
        {specs.map((spec, key) => {
          return (
            <div>
              <li key={spec.id}>{spec.specs}</li>
              <hr></hr>
            </div>
          );
        })}
      </ul>
    </div>
  );
};

export default Specs;
