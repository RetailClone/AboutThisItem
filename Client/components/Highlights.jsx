import React from "react";

const Highlights = ({ highlights }) => {
  return (
    <div id="highlights">
      <h2>Highlights</h2>
      <ul>
        {highlights.map((highlight, idx) => {
          return <li key={idx}>{highlight.highlights}</li>;
        })}
      </ul>
    </div>
  );
};

export default Highlights;
