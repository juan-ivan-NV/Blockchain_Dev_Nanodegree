const { assert } = require("console");
const { it } = require("node:test");
const _deploy_contracts = require("../../ERC20Truffle/solidity/migrations/2_deploy_contracts");

beforeEach( async () => {
    // deploy the comtract and get available accounts
    library = await Library.deployed();
    await _deploy_contracts('Library', function(acc) {
        accounts = acc;
    })
});

describe ('all tests', () => {

    it('create a Library owner', async () => {
        const owner = await library.owner();
        assert.equal(owner, accounts[0]);
    })

    it('can add a Librarian', async () => {
        await library.addLibrarian("Rachna", accounts[1], {from: accounts[0]});
        const result = await library.mapLibrarian(accounts[1]);
        assert.equal(result, true);#
    })
})

/*
beforeEach (async () => {
    library = await Library.deployed();
     await contract ('Udacity', function(acc) {
         accounts = acc;
     })
});

describe ('all tests', () => {
    it ('can create a Library owner', async () => {
            const owner = await library.owner();
            assert.equal(owner, accounts[0]);
     })
}) 
*/