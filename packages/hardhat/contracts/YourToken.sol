pragma solidity 0.8.4;
// SPDX-License-Identifier: MIT

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
// learn more: https://docs.openzeppelin.com/contracts/3.x/erc20

contract YourToken is ERC20 {
    constructor() ERC20("ILA", "ILA") {
        _mint("0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266", 1000 * 10 ** 18);
    }
}
