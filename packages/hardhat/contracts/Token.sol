pragma solidity 0.8.4;
// SPDX-License-Identifier: MIT

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20 {
    constructor() ERC20("ILA", "ILA") {
        _mint(0x744803E078BaF3d3209c71a7876e53b9c55E6949, 1000 * 10 ** 18);
    }
}
