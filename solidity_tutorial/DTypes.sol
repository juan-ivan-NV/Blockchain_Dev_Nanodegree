// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    // State variables
    int256 public myInt = 1;  // signed integer
    uint public myUint = 1;   // unsigned integer
    uint256 public myUint256 = 1; 
    uint8 public myUint8 = 1;

    string public myString = "Hello, world";
    bytes32 public myBytes32 = "Hello, world";

    address public myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    // Data structure
    struct myStruct {
        uint256 myUint256;
        string myString;
    }

    myStruct public MyStruct = myStruct(1, "Hi babe");

    // Locan variables inside a function
    function getValue () public pure returns(uint){
        uint value =1;
        return value;
    }


}