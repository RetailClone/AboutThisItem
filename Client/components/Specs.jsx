import React from "react";

const Specs = ({ specs }) => {
  // console.log(specs);
  return (
    <div id="specs">
      <h2>Specifications</h2>
      <ul style={{ listStyleType: "none" }}>
        {specs.map((spec, idx) => {
          return (
            <div key={idx}>
              <li>
                <span id="boldSlice">
                  {spec.specs.slice(0, spec.specs.indexOf(":") + 1)}
                </span>
                {spec.specs.slice(spec.specs.indexOf(":") + 1)}
              </li>
              <hr></hr>
            </div>
          );
        })}
      </ul>
    </div>
  );
};

export default Specs;
