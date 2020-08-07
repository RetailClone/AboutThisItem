import React from "react";

const Specs = ({ specs }) => {
  // console.log(specs);
  return (
    <div id="specs">
      <h2>Want some specs?</h2>
      <ul style={{ listStyleType: "none" }}>
        {specs.map((spec, idx) => {
          return (
            <div key={idx}>
              <li>{spec.specs}</li>
              <hr></hr>
            </div>
          );
        })}
      </ul>
    </div>
  );
};

export default Specs;
