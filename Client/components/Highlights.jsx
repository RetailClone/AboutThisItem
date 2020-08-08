import React from "react";

const Highlights = ({ highlights }) => {
  return (
    <div id="highlights">
      <h3>Highlights</h3>
      <ul>
        {highlights.map((highlight, idx) => {
          return <li key={idx}>{highlight.highlights}</li>;
        })}
      </ul>
    </div>
  );
};

export default Highlights;
