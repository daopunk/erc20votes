// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

// import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract FuturoToken is ERC20 {
    constructor() ERC20("Futuro", "FTR") {}

    function mint(address account, uint256 amount) external {
        _mint(account, amount);
    }
}
