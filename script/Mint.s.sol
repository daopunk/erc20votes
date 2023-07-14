// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import {GovernanceToken} from "src/GovernanceToken.sol";

// forge script script/Mint.s.sol:MintScript --rpc-url $RUS --private-key $PK --broadcast -vvvv

contract Mint is Script {
    GovernanceToken _token = GovernanceToken(0x0Ed89D4655b2fE9f99EaDC3116b223527165452D);

    uint256 _amount = 1e18 * 10000;

    function run() public {
        vm.startBroadcast();

        _token.mint(0x37c5B029f9c3691B3d47cb024f84E5E257aEb0BB, _amount);
        _token.mint(0x23aD35FAab005a5E69615d275176e5C22b2ceb9E, _amount);

        vm.stopBroadcast();
    }
}
