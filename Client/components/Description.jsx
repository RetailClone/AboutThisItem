import React from "react";

const Description = ({ desc }) => {
  return (
    <div id="Adescription">
      <h3 id="detail-headers">Description</h3>
      <p className="about-content-text" id="AdescText">
        {desc}
      </p>
    </div>
  );
};

export default Description;
