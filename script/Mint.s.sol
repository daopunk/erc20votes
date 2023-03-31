// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import {FuturoToken} from "src/FuturoToken.sol";

// forge script script/Mint.s.sol:MintScript --rpc-url $RUS --private-key $PK --broadcast -vvvv

contract MintScript is Script {
    FuturoToken token = FuturoToken(0xB6Bd6e0e1A104782EB6477120C7Aaf424e0656E1);

    uint256 amount = 1e18 * 10000;

    function run() public {
        vm.startBroadcast();

        token.mint(0xD5d1bb95259Fe2c5a84da04D1Aa682C71A1B8C0E, amount);
        token.mint(0x37c5B029f9c3691B3d47cb024f84E5E257aEb0BB, amount);
        token.mint(0xE9DA154834D8c9A8030B175EB3bFd974130AC0a0, amount);

        vm.stopBroadcast();
    }
}
