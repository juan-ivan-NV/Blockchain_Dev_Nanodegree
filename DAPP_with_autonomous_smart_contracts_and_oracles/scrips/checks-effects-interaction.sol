// Using any text editor, write a function safeWithdraw(uint256) that protects against re-entrancy 
// attacks using the Checks-Effects-Interaction pattern based on these requirements.
// Verify value of caller address in mapping(address => uint256) sales is greater than or equal to 100.
// Verify caller has adequate funds to withdraw
// Transfer value of sales for caller to caller address
// Reset sales for caller address to zero
// Verify caller is an Externally Owned Account


pragma solidity ^0.4.24;

using SafeMath for uint256;

mapping(address => uint256) private sales;
function safeWithdraw(uint256 amount) external {
    // Checks
    require(msg.sender == tx.origin, "Contracts not allowed");
    require(sales[msg.sender] >= amount, "Insufficient funds");
    // Effects
    uint256 amount = sales[msg.sender];
    sales[msg.sender] = sales[msg.sender].sub(amount);
    // Interaction
    msg.sender.transfer(amount);
}

