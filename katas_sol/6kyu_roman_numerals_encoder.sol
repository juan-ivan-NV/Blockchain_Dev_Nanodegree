// SPDX-License-Identifier: BSD-2-Clause
pragma solidity ^0.8.16;

contract Kata {
  
  function solution(uint256 n) public pure returns (string memory) {
    // Convert the positive integer to a Roman Numeral
    string memory rom_num;
    string[13] memory symbols = ['M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV', 'I'];
    uint16[13] memory values = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1];
        for(uint256 i; i < values.length; i+=1) {
          if (n >= values[i]) {
            rom_num = string(abi.encodePacked(rom_num, symbols[i]));
            n = n - values[i];
          }
        }
    return rom_num;
  }
}