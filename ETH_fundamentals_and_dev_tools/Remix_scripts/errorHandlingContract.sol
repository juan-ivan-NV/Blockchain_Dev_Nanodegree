pragma solidity ^0.4.25;

contract exceptionContract {

    // Public variable lastCaller, with a value of none
    string public lastCaller = "none";

    // Function revertBehavior that takes in a name as an argument,
    // and sets the lastCaller variable to this argument received
    function revertBehavior(string name) public returns (bool) {
        lastCaller = name;

        // Check if length of the string is zero
        // If the argument received has zero length, it throws an exception...
        // Once an exception is thrown, the variable lastCaller rolls back to its initial value
        if (bytes(name).length == 0) {
            revert();
        }
        // This is the same thing...just using require to check the length of the input string.
        // The code will only be executed if the length is greater than 0
        // The above lines of code may be replaced with this
        // require(bytes(name).length > 0);

        return true;
    }
}