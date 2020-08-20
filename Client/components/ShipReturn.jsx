import React from "react";

const ShipReturn = ({ shipping, returns }) => {
  return (
    <div id="shipReturns">
      <h3>Shipping Details</h3>
      <ul style={{ listStyleType: "none" }}>
        {shipping.map((option, idx) => {
          return <li key={idx}>{option.shipping_details}</li>;
        })}
      </ul>
      <br />
      <h3>Return Details</h3>
      <ul style={{ listStyleType: "none" }}>
        {returns.map((reeturn, idx) => {
          return <li key={idx}>{reeturn.return_details}</li>;
        })}
        <li>
          See the{" "}
          <a href="http://ec2-18-191-7-97.us-east-2.compute.amazonaws.com:1701/returnPolicy.html">
            return policy
          </a>{" "}
          for more information.
        </li>
      </ul>
    </div>
  );
};

export default ShipReturn;
