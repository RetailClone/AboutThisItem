import React from "react";

const Description = ({ desc }) => {
  return (
    <div id="description">
      <h3>Description</h3>
      <p id="descText">{desc}</p>
    </div>
  );
};

export default Description;
