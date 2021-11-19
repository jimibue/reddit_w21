import React, { useState } from "react";

const Counter = (props) => {
  // useState hook general usage
  // const [getState, setState] = useState(initialState);
  const [count, setCount] = useState(0);
  const [totalClickCount, setTotalClickCount] = useState(0);

  // callback function
  const add = () => {
    console.log("add clicked");
    setCount(count + 1);
    setTotalClickCount(totalClickCount + 1);
  };
  const minus = () => {
    console.log("minus clicked");
    setCount(count - 1);
    setTotalClickCount(totalClickCount + 1);
  };
  return (
    <div>
      <h3>{props.header}</h3>
      <p>count: {count}</p>
      <p>Total click count: {totalClickCount}</p>
      <button onClick={add}>add</button>
      <button onClick={minus}>minus</button>
    </div>
  );
};
export default Counter;
