// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*contract Counter{
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
}*/

/*contract Counter{
    // State variable public to get rid of getCount function
    uint public count;

    constructor(){
        count = 0;
    }

    function incrementAccount() public {
        count ++;
    }
}*/

contract Counter {
    uint public count = 0;

    function incrementAccount() public{
        count ++;
    }
}