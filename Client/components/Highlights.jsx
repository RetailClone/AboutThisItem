import React from "react";

const Highlights = ({ highlights }) => {
  return (
    <div id="highlightList">
      <h3>Highlights</h3>
      <ul id="highlights">
        {highlights.map((highlight, idx) => {
          return (
            <li id="highlight" key={idx}>
              {highlight.highlights}
            </li>
          );
        })}
      </ul>
    </div>
  );
};

export default Highlights;
