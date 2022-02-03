pragma solidity 0.8.4;
// SPDX-License-Identifier: MIT

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20 {
    constructor() ERC20("ILA", "ILA") {
        _mint(0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266, 1000 * 10 ** 18);
    }
}
