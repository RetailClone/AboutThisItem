import React from "react";

const Specs = ({ specs }) => {
  // console.log(specs);
  return (
    <div id="specs">
      <h3>Specifications</h3>
      <ul style={{ listStyleType: "none" }}>
        {specs.map((spec, idx) => {
          return (
            <div key={idx}>
              <br></br>
              <li>
                <span id="boldSlice">
                  {spec.specs.slice(0, spec.specs.indexOf(":") + 1)}
                </span>
                <span id="lightSlice">
                  {spec.specs.slice(spec.specs.indexOf(":") + 1)}
                </span>
              </li>
              <br></br>
              <hr></hr>
            </div>
          );
        })}
      </ul>
    </div>
  );
};

export default Specs;
