import React from "react";

const EditTopic = (props) => {
  return (
    <div>
      <h1>Edit Topic Form for {props.sub.name}</h1>
      <form
        action={`/subs/${props.sub.id}/topics/${props.topic.id}`}
        method="post"
      >
        <input type="hidden" name="_method" value="patch" />
        <p>name</p>
        <input defaultValue={props.topic.name} name="topic[name]" />
        <p>body</p>
        <textarea defaultValue={props.topic.body} name="topic[body]" />
        <button type="submit">edit topic</button>
      </form>

      {JSON.stringify(props)}
    </div>
  );
};

export default EditTopic;
