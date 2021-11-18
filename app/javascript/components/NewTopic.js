import React from "react";

const NewTopic = (props) => {
  return (
    <div>
      <h1>New Topic Form for {props.sub.name}</h1>
      <form action={`/subs/${props.sub.id}/topics`} method="post">
        <p>name</p>
        <input name="topic[name]" />
        <p>body</p>
        <textarea name="topic[body]" />
        <button type="submit">add topic</button>
      </form>

      {JSON.stringify(props)}
    </div>
  );
};

export default NewTopic;
