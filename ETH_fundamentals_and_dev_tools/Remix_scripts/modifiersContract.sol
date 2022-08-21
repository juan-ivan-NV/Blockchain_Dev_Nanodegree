pragma solidity ^0.4.25;

contract ModifiersContract {
    // State variable
    address owner;
    uint value;
    // Defines a modifier
    modifier ownerOnly {
        // Condition executed before function body
        if(owner == msg.sender) {
            // Function body
            _;
        } else {
            revert();
        }
    }

    // Anyone can execute Modifier not applied
    function anyoneCanCall () public returns (bool) {
        value = 100;
        return true;
    }

    // Only Owner can execute
    function onlyOwnerCanCall () ownerOnly public returns (bool) {
        value = 100;
        return true;
    }
}