import React from "react";

const NewSub = (props) => {
  return (
    <div>
      <p>TODO: New sub form here</p>
      <a href="/">Home</a>
      <a href="/subs">Back to Subs</a>
      <form action="/subs" method="post">
        <p>name</p>
        <input name="sub[name]" />
        <button type="submit">add sub</button>
      </form>
    </div>
  );
};

export default NewSub;
