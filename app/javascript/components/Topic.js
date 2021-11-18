import React from "react";

const Topic = (props) => {
  return (
    <div>
      <h1>Topic Show</h1>
      <a href={`/subs/${props.topic.sub_id}/topics`}>back</a>
      <p>topic id: {props.topic.id}</p>
      <p>sub id: {props.topic.sub_id}</p>
      <div style={{ margin: "10px", border: "1px solid black" }}>
        <p>Name: {props.topic.name}</p>
        <p>body: {props.topic.body}</p>
      </div>
      <code>{JSON.stringify(props)}</code>
    </div>
  );
};

export default Topic;
