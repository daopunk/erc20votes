// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import {FuturoToken} from "src/FuturoToken.sol";

// forge script script/Deploy.s.sol:DeployScript --rpc-url $RUS --private-key $PK --broadcast --verify --etherscan-api-key $EK -vvvv

contract DeployScript is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        new FuturoToken();

        vm.stopBroadcast();
    }
}
