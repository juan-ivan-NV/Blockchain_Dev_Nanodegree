// SPDX-License-Identifier: BSD-2-Clause
pragma solidity ^0.8.16;

contract Kata {
  function expressionMatter(uint a, uint b, uint c) public pure returns (uint) {
    uint option1 = a * (b + c);
    uint option2 = a * b * c;
    uint option3 = (a + b) * c;
    uint option4 = (a * b) + c;
    uint option5 = a + (b * c);
    uint option6 = a + b + c;
    
    uint[6] memory lst = [option1, option2, option3, option4, option5, option6];
    uint maxnum = 0;
    
    for (uint i=0; i < lst.length; i++) {
      if (lst[i] > maxnum) {
        maxnum = lst[i];
      }
    }
    return maxnum;
  }

  /*
  // testing code
  // SPDX-License-Identifier: BSD-2-Clause
const { loadFixture } = require("@nomicfoundation/hardhat-network-helpers");
const { assert } = require("chai");

describe('Kata', function() {
  async function deployFixture() {
    const Contract = await ethers.getContractFactory("Kata");
    const contract = await Contract.deploy();
    await contract.deployed();
    return contract; 
  };
  it("basic tests", async function() {
    const m = await loadFixture(deployFixture);
    
    assert.strictEqual(+await m.expressionMatter(2, 1, 2), 6);
    assert.strictEqual(+await m.expressionMatter(2, 1, 1), 4);
    assert.strictEqual(+await m.expressionMatter(1, 1, 1), 3);
    assert.strictEqual(+await m.expressionMatter(1, 2, 3), 9);
    assert.strictEqual(+await m.expressionMatter(1, 3, 1), 5);
    assert.strictEqual(+await m.expressionMatter(2, 2, 2), 8);
    assert.strictEqual(+await m.expressionMatter(5, 1, 3), 20);
    assert.strictEqual(+await m.expressionMatter(3, 5, 7), 105);
    assert.strictEqual(+await m.expressionMatter(5, 6, 1), 35);
    assert.strictEqual(+await m.expressionMatter(1, 6, 1), 8);
    assert.strictEqual(+await m.expressionMatter(2, 6, 1), 14);
    assert.strictEqual(+await m.expressionMatter(6, 7, 1), 48);
    assert.strictEqual(+await m.expressionMatter(2, 10, 3), 60);
    assert.strictEqual(+await m.expressionMatter(1, 8, 3), 27);
    assert.strictEqual(+await m.expressionMatter(9, 7, 2), 126);
    assert.strictEqual(+await m.expressionMatter(1, 1, 10), 20);
    assert.strictEqual(+await m.expressionMatter(9, 1, 1), 18);
    assert.strictEqual(+await m.expressionMatter(10, 5, 6), 300);
    assert.strictEqual(+await m.expressionMatter(1, 10, 1), 12);
  });
});

*/