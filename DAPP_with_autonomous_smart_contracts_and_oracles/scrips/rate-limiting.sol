pragma solidity ^0.4.24;

using SafeMath for uint256;

uint256 private enabled = block.timestamp;
modifier rateLimit(uint time) {
    require(block.timestamp >= enabled, "Rate limiting in effect");
    enabled = enabled.add(time);

}

function safeWithdraw(uint256 amount) external rateLimit(30 minutes){
    // function body
}