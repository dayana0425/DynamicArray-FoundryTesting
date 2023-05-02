// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

/*
Write a function that will delete items (one at a time) from a dynamic array without
leaving gaps in the array. 

You should assume that the items to be deleted are chosen at random, and try to do this in a gas efficient manner.

For example imagine your array has 12 items and you need to delete the items at indexes
8, 2 and 7.

Initial Array:
[ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 ]
Delete Items:
[ 0, 1, BLANK, 3, 4, 5, 6, BLANK, BLANK, 10, 11]
Remove spaces: 
[ 0, 1, 3, 4, 5, 6, 10, 11]

The final array will then have items {0,1,3,4,5,6,9,10,11}

Input: An array & list of indexes to delete
Output: The same array with the items deleted
*/

contract DynamicArray {
    // Define a static array of integers
    uint256[] dynamicArray;

    // Constructor  - Initialize the array with some values given input
    constructor(uint256[] memory _dynamicArray) {
        dynamicArray = _dynamicArray;
    }

    function addElement(uint256 element) public {
        // Add an element to the end of the array
        dynamicArray.push(element);
    }

    function removeElement(uint256 index) public {
        // delete an element from the array
        delete dynamicArray[index];
        // shift elements
        for (uint256 i = index; i < dynamicArray.length - 1; i++) {
            dynamicArray[i] = dynamicArray[i + 1];
        }
        // pop last element
        dynamicArray.pop();
    }

    function getArrayLength() public view returns (uint256) {
        // Return the length of the array
        return dynamicArray.length;
    }

    function getElementAtIndex(uint256 index) public view returns (uint256) {
        // Return the element at a given index
        return dynamicArray[index];
    }
}
