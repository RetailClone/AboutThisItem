import React from "react";

const Highlights = ({ highlights }) => {
  return (
    <div id="AhighlightList">
      <h3 id="detail-headers">Highlights</h3>
      <ul id="Ahighlights">
        {highlights.map((highlight, idx) => {
          return (
            <div id="highlight-container">
              <li className="about-content-text" id="Ahighlight" key={idx}>
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
