// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/DynamicArray.sol";

contract DynamicArrayText is Test {
    DynamicArray public dynamicArray;

    function setUp() public {
        uint256[] memory _dynamicArray = new uint256[](3);
        _dynamicArray[0] = 1;
        _dynamicArray[1] = 2;
        _dynamicArray[2] = 3;
        dynamicArray = new DynamicArray(_dynamicArray);
        // displayArrayElements
        displayArrayElements();
    }

    function testRemoveFirstElement() public {
        // remove element 0
        dynamicArray.removeElement(0);
        // get length
        uint256 length = dynamicArray.getArrayLength();
        // assert length is 2
        assertEq(length, 2);
        // emit named uint log
        emit log_named_uint("length", length);
        // displayArrayElements
        displayArrayElements();
    }


    function testRemoveMiddleElement() public {
        // remove element 1
        dynamicArray.removeElement(1);
        // get length
        uint256 length = dynamicArray.getArrayLength();
        // assert length is 2
        assertEq(length, 2);
        // emit named uint log
        emit log_named_uint("length", length);
        // displayArrayElements
        displayArrayElements();
    }

    function testRemoveLastElement() public {
        // remove element 2
        dynamicArray.removeElement(2);
        // get length
        uint256 length = dynamicArray.getArrayLength();
        // assert length is 2
        assertEq(length, 2);
        // emit named uint log
        emit log_named_uint("length", length);
        // displayArrayElements
        displayArrayElements();
    }

    function testRemoveMultipleElements() public {
        // remove element 0
        dynamicArray.removeElement(0);
        // remove element 1
        dynamicArray.removeElement(1);
        assertEq(dynamicArray.getArrayLength(), 1);
        // emit named uint log
        emit log_named_uint("length", dynamicArray.getArrayLength());
        // displayArrayElements
        displayArrayElements();
    }

    function testRemoveMultipleElements2() public {
        // remove element 0
        dynamicArray.removeElement(0);
        // remove element 0
        dynamicArray.removeElement(0);
        assertEq(dynamicArray.getArrayLength(), 1);
        // emit named uint log
        emit log_named_uint("length", dynamicArray.getArrayLength());
        // displayArrayElements
        displayArrayElements();
    }

    function displayArrayElements() internal {
        uint256 length = dynamicArray.getArrayLength();
        for (uint256 i = 0; i < length; i++) {
            emit log_named_uint("element", dynamicArray.getElementAtIndex(i));
        }
    }
}
