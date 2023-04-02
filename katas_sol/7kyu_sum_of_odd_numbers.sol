// SPDX-License-Identifier: BSD-2-Clause
pragma solidity ^0.8.16;

contract Kata {
  function rowSumOddNumbers(int n) public pure returns (int) {
    return n ** 3;
  }
}


/*
// testing code

// SPDX-License-Identifier: BSD-2-Clause
const { loadFixture } = require("@nomicfoundation/hardhat-network-helpers");
const { assert } = require("chai");

describe('Sum of odd numbers', function() {
  async function deployFixture() {
    const Contract = await ethers.getContractFactory("Kata");
    const contract = await Contract.deploy();
    await contract.deployed();
    return contract; 
  };
  
  it("Sample Tests", async function() {
    const d = await loadFixture(deployFixture);
    assert.equal(await d.rowSumOddNumbers(1), 1);
    assert.equal(await d.rowSumOddNumbers(2), 8);
    assert.equal(await d.rowSumOddNumbers(13), 2197);
    assert.equal(await d.rowSumOddNumbers(19), 6859);
    assert.equal(await d.rowSumOddNumbers(41), 68921);
    assert.equal(await d.rowSumOddNumbers(42), 74088);
    assert.equal(await d.rowSumOddNumbers(74), 405224);
    assert.equal(await d.rowSumOddNumbers(86), 636056);
    assert.equal(await d.rowSumOddNumbers(93), 804357);
    assert.equal(await d.rowSumOddNumbers(101), 1030301);
  });
});
 */