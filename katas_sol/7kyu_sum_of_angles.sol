// SPDX-License-Identifier: BSD-2-Clause
pragma solidity ^0.8.16;

contract Kata {
  function angle(int n) public pure returns (int) {
    // your code here
    return (n-2) * 180;
  }
}

/*
// Good practices
pragma solidity ^0.8.16;

contract Kata {
  function angle(uint n) public pure returns (uint) { 
    require(n > 2, "Polygon must have at least 3 sides");
    return (n - 2) * 180;
  }
} 

// SPDX-License-Identifier: BSD-2-Clause
pragma solidity ^0.8.16;

contract Kata {
  function angle(int n) public pure returns (int sum) {
    sum = 180 * (n-2);
  }
}

*/




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
  
  it("Basic Tests", async function() {
    const m = await loadFixture(deployFixture);
    
    assert.strictEqual(await m.angle(3), 180);
    assert.strictEqual(await m.angle(4), 360);
  });
});
*/