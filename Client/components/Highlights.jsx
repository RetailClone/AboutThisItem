import React from "react";

const Highlights = ({ highlights }) => {
  return (
    <div id="AhighlightList">
      <h3>Highlights</h3>
      <ul id="Ahighlights">
        {highlights.map((highlight, idx) => {
          return (
            <div id="highlight-container">
              <li id="Ahighlight" key={idx}>
                {highlight.highlights}
              </li>
            </div>
          );
        })}
      </ul>
    </div>
  );
};

export default Highlights;
