import React from "react";

const Sub = (props) => {
  return (
    <div>
      <p>TODO: List single sub here</p>
      <h1>{props.sub.name}</h1>
      <p>id: {props.sub.id}</p>
      <a href="/">Home</a>
      <a href="/subs">Subs list</a>
    </div>
  );
};

export default Sub;
