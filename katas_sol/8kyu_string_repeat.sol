// SPDX-License-Identifier: BSD-2-Clause
pragma solidity ^0.8.16;

contract Repeater {
  function multiply(uint8 repeat, string memory pattern) public pure returns (string memory) {
    string memory word = pattern;
    
    if (repeat > 0) {
      
      for(uint i = 1; i < repeat; i++) {
        word = string.concat(word, pattern);
      }
      return word;
      
    } else {
      return "";
    }
  }
}


// Best solution
/*
// SPDX-License-Identifier: BSD-2-Clause
pragma solidity ^0.8.16;

contract Repeater {
  function multiply(uint8 repeat, string memory pattern) public pure returns (string memory) {
    string memory result = "";
    for (uint8 i = 0; i < repeat; i++) {
      result = string.concat(result, pattern);
    }
    return result;
  }
}
 */



// Test code

/*
// SPDX-License-Identifier: BSD-2-Clause
const { loadFixture } = require("@nomicfoundation/hardhat-network-helpers");
const { assert } = require("chai");

describe('Repeater', _ => {
  async function deployFixture() {
    const Contract = await ethers.getContractFactory("Repeater");
    const contract = await Contract.deploy();
    await contract.deployed();
    return contract; 
  };
  
  it('Sample Tests', async function () {
    const d = await loadFixture(deployFixture);
    assert.equal(await d.multiply(4, "a"), "aaaa");
    assert.equal(await d.multiply(3, "Hello"), "HelloHelloHello");
    assert.equal(await d.multiply(5, ""), "");
    assert.equal(await d.multiply(0, "kata"), "");
  });
});
 */