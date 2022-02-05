pragma solidity 0.8.4;
// SPDX-License-Identifier: MIT
import "hardhat/console.sol";

import "@openzeppelin/contracts/access/Ownable.sol";
import "./Token.sol";

contract Vendor is Ownable {

  uint256 public constant tokensPerEth = 100;

  event BuyTokens(address buyer, uint256 amountOfWei, uint256 amountOfTokens);

  Token public token;

  constructor(address tokenAddress) {
    token = Token(tokenAddress);
  }

  function buyTokens() external payable {
    require(msg.value > 0, "No ETH was sent.");
    uint256 amountOfETH = msg.value / (10 ** 18);
    uint256 amountOfTokens = msg.value * tokensPerEth / (10**18);
    token.transfer(msg.sender, amountOfTokens);

    emit BuyTokens(msg.sender, msg.value, amountOfTokens); 
  }

  // ToDo: create a payable buyTokens() function:

  // ToDo: create a withdraw() function that lets the owner withdraw ETH

  // ToDo: create a sellTokens() function:

}
