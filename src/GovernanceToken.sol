// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {ERC20} from "lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";
import {ERC20Votes} from "lib/openzeppelin-contracts/contracts/token/ERC20/extensions/ERC20Votes.sol";

contract GovernanceToken is ERC20, ERC20Votes {
    constructor() ERC20("FuturoGov", "FTRG") {}

    function mint(address account, uint256 amount) external {
        _mint(account, amount);
    }
}
