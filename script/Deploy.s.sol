// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import {GovernanceToken} from "src/GovernanceToken.sol";

// forge script script/Deploy.s.sol:DeployScript --rpc-url $RUS --private-key $PK --broadcast --verify --etherscan-api-key $EK -vvvv

contract Deploy is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        new GovernanceToken();

        vm.stopBroadcast();
    }
}
