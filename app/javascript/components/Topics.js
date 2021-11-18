import React from "react";

const Topics = (props) => {
  const renderTopics = () => {
    return props.topics.map((topic) => {
      return (
        <div className="sub-container">
          <h3>{topic.name}</h3>
          <p>topic id:{topic.id}</p>
          <p>{topic.body}</p>
          <a href={`/subs/${props.sub.id}/topics/${topic.id}`}>show</a>
        </div>
      );
    });
  };
  return (
    <div>
      <h1>Sub: {props.sub.name}</h1>
      <p>Sub id: {props.sub.id}</p>

      {/* a link to go back to subs index */}
      <a href={`/subs`}>back to subs</a>
      <hr />
      <h2>Topics: </h2>
      {renderTopics()}
      <p>{JSON.stringify(props)}</p>
    </div>
  );
};

export default Topics;
