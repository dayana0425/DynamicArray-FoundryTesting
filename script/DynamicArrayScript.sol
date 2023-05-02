// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import {DynamicArray} from "src/DynamicArray.sol";

contract DynamicArrayScript is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        uint256[] memory array = new uint256[](4);
        array[0] = 1;
        array[1] = 2;
        array[2] = 3;
        array[3] = 4;
        new DynamicArray(array);

        vm.stopBroadcast();
    }
}
