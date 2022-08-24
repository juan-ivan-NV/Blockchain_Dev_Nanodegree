# Ethereum Fundamentals and Development Tools

<a href="https://ethereum.org/en/">ethereum.org</a>

<a href="https://etherscan.io/">Etherscan:</a> Block explorer used to search Ethereum analytics. 

<a href="https://metamask.io/">Metamask:</a> Browser based plug-in that allows you to carry out Ethereum transactions. 

<a href="https://remix.ethereum.org/#optimize=false&runs=200&evmVersion=null&version=soljson-v0.8.7+commit.e28d00a7.js">Remix IDE:</a> A browser based IDE that allows you to write Solidity and deploy solidity contracts. 

<a href="https://web3js.readthedocs.io/en/v1.7.5/">web3.js:</a> A collection of libraries that allow you to interact with a local or remote Ethereum node. 

<a href="https://infura.io/">INFURA:</a> It allows you to connect to the Ethereum blockchain without running a full node. It's a lightweight alternative to downloading the entire blockchain to your local device. It makes the connection that allows you to use the functionality provided by web3. 

<a href="https://trufflesuite.com/ganache/">Ganache:</a> This tool allows you to set up your own local blockchain. It comes preloaded with 10 accounts, each containing 100 ether. This gives you a way to make test transactions between many accounts without needing to worry about stocking up on test ether or paying for real ether.

<code>npm install -g ganache-cli</code>

<a href="https://trufflesuite.com">TRUFFLE:</a> A development environment, testing framework, and asset pipeline meant to make your life easier as an Ethereum developer. 

<a href="https://geth.ethereum.org/">geth:</a> A golang implementation of the Ethereum blockchain used to set up a local full Ethereum node. 

<a href="https://ethstats.net/">Ethstats:</a> Here you can check out some of the current data about the Ethereum network.. 


Objetives:

Create DApps (Decentralized Applications) on the ethereum network.

DApps run on decentralized networks powered by a network of computers. Standard Applications run on the computation of centralized networks owned by companies.

<a href="https://dappradar.com/">DApp radar:</a> In this site there many examples of applications built on the ETH network. 


## EOAs (externally owned accounts) vs CA (contract accounts).

Externally owned accounts are owned by users with private keys while contract accounts are held by smart contracts. Transaction counts on EOA's refer to the number of transactions that user made while on CA's it refers to the number of times it has deployed other smart contracts. Many of the contents of these accounts are the same but contract accounts also hold the code from the deployed contract.

## More concepts

GAS Price: Price per unit of gas you are willing to pay for executing the code in your smart contract. 

Gas is needed to incentivize miners to pick up and validate transactions. It's a small fee paid for the cost of each bit of code executed to complete a smart contract. While the gas is specific to execution costs, it can be converted to its equivalent value in ether and given to the miner as reward for their effort.

GAS Limit: Maximum amount of gas a sender is willing to pay for a given transaction.

# Smart Contracts with Solidity

<a href="https://docs.soliditylang.org/en/v0.4.24/">Solidity documentation</a> 

<a href="https://remix.ethereum.org/">Remix</a> To develop Solidity contracts.


# Different Available Token Standards

For more information click <a href="https://eips.ethereum.org/erc">here.</a>

* ERC-20

* ERC-223

* ERC-621

* ERC-721

* ERC-827



## Faucets for ETH testnets

Many issues
https://www.rinkeby.io/#faucet

Another option
https://faucets.chain.link/rinkeby

