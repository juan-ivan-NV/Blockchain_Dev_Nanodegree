pragma solidity ^0.4.24;

using SafeMath for uint256;

modifier entrancyGuard() {
    // modifier
    counter = counter.add(1);
    uint256 guard = counter;
    _;
    // modifyer
    require(guard == counter, "that is not allowed";)
}

function safeWithdraw(uint256 amount) external entrancyGuard() {
    // Withdraw code
}