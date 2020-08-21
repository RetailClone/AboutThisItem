import React from "react";

const Specs = ({ specs }) => {
  return (
    <div>
      <h3 id="detail-headers">Specifications</h3>
      <ul style={{ listStyleType: "none" }}>
        {specs.map((spec, idx) => {
          return (
            <div id="individual-specs" key={idx}>
              <li>
                <span id="AboldSlice">
                  {spec.specs.slice(0, spec.specs.indexOf(":") + 1)}
                </span>
                <span id="AlightSlice">
                  {spec.specs.slice(spec.specs.indexOf(":") + 1)}
                </span>
              </li>
            </div>
          );
        })}
      </ul>
      <p>
        If the item details above aren’t accurate or complete, we want to know
        about it.{" "}
        <a href="http://ec2-18-191-7-97.us-east-2.compute.amazonaws.com:1701/tooBad.html">
          Report incorrect product info.
        </a>
      </p>
    </div>
  );
};

export default Specs;
