import React from "react";

const Subs = () => {
  return (
    <div>
      <p>TODO: List subs here</p>
      <a href="/">Home</a>
      <a href="/subs/new">New Sub</a>
      {/* need to make id dynamic hardcoding to 1 for now */}
      <a href="/subs/1">Sub Show</a>
      <a href="/subs/1/edit">Sub edit</a>
    </div>
  );
};

export default Subs;
