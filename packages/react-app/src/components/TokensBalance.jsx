import React, { useState } from "react";
import { useBalance } from "eth-hooks";

const { utils } = require("ethers");

export default function TokensBalance(props) {
  const balance = useBalance(props.provider, props.address);
  let usingBalance = balance;

  if (typeof props.balance !== "undefined") {
    usingBalance = props.balance;
  }
  if (typeof props.value !== "undefined") {
    usingBalance = props.value;
  }
 
  return (
    <span
      style={{
        verticalAlign: "middle",
        fontSize: props.size ? props.size : 24,
        padding: 8,
        cursor: "pointer",
      }}
    >
      {usingBalance}
    </span>
  );
}