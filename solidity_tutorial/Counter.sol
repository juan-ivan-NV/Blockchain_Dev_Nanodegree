// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Counter{
    // State variable
    uint count;

    constructor() {
        count = 0;
    }

    // "public" function can be accesed oustside the contract
    // "view returns()" type of variable to return
    // read functions are free
    function getCount() public view returns(uint) {
        return count;
    }

    // write functions require gas to be paid
    function incrementAccount() public {
        count += 1;
    }
}