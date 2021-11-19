import axios from "axios";
import React, { useState } from "react";
import Counter from "./Counter";

const Demo = (props) => {
  const [dataFromDB, setDataFromDB] = useState(null);
  const getData = async () => {
    console.log("clicked");
    // let res = axios.httpMethod("route");
    // wait for response pause code here until db give data back
    let response = await axios.get("http://localhost:3000/taco");
    setDataFromDB(response.data);
  };
  return (
    <div>
      <h1>React Demo</h1>
      <button onClick={getData}>get some data from db</button>
      {dataFromDB ? JSON.stringify(dataFromDB) : "No Data Yet"}
      <hr />
      <Counter header="Step Count" />
      <Counter header="Calorie count" />
      <Counter header="Win count" />
    </div>
  );
};
export default Demo;

// // jquery (html)
// <button id='btn'>minus</button>
// <count id='count'>0</count>

// // js
// count = 0
// $(#btn).addEventlistner('onClick',()=>{
//   count++
//   $('#count').innedHTML = count
// })
