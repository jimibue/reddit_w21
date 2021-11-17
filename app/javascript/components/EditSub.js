import React from "react";

const EditSub = (props) => {
  return (
    <div>
      <p>TODO: Edit sub form here</p>
      <a href="/">Home</a>
      <a href="/subs">Back to Subs</a>
      <form action={`/subs/${props.sub.id}`} method="post">
        <input type="hidden" name="_method" value="patch" />
        <p>name</p>
        <input defaultValue={props.sub.name} name="sub[name]" />
        <button type="submit">update</button>
      </form>
    </div>
  );
};

export default EditSub;
