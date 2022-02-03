pragma solidity 0.8.4;
// SPDX-License-Identifier: MIT

import "@openzeppelin/contracts/access/Ownable.sol";
import "./Token.sol";

contract Vendor is Ownable {

  uint256 public constant tokensPerEth = 100;

  //event BuyTokens(address buyer, uint256 amountOfETH, uint256 amountOfTokens);

  Token public token;

  constructor(address tokenAddress) {
    token = Token(tokenAddress);
  }

  // ToDo: create a payable buyTokens() function:

  // ToDo: create a withdraw() function that lets the owner withdraw ETH

  // ToDo: create a sellTokens() function:

}
