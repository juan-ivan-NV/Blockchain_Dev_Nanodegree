Many of the concepts that Nakamoto wrote about - from building in privacy to ensuring the system grows - extend beyond Bitcoin and even beyond just cryptocurrency. These are concepts that are fundamental to building a robust blockchain for any application.

<a href = "https://bitcoin.org/bitcoin.pdf">Bitcoin: A Peer to Peer Electronic Cash System</a>

<center>
<img src='../Images/B_Framework.PNG'/>
<figcaption>Blockchain oveview</figcaption></center>

<center>
<img src='../Images/Hashing.PNG'/>
<figcaption>Hashing</figcaption></center>


Blockchain is a distributed peer-to-peer network.

* Peer-to-Peer Network: A network of computers that allows information to be shared across users.

* Distributed Network: A network that allows information to spread out across many users.

* Memory pool (also known as the mempool) is the waiting place for transactions before they enter the blockchain.

* Consensus is an idea implemented through many different algorithms. Things like proof of work, proof of stake, and DBFT are all consensus algorithms.


The idea behind <strong>proof of work</strong> is that whoever puts in the most work to contribute to the system is the most trustworthy.

* It consumes a lot of energy.

* There are monopolies in mining with this algorithm.

The key idea behind <strong>proof of stake</strong> is that it focuses on giving votes to members, depending on how much stake they have in the success of the chain.

<strong>Delegated Byzantine Fault Tolerance</strong> or DBFT tries to achieve consensus by assigning roles to nodes to help coordinate consensus.


## Managing Blockchain Transactions 

Like a social security number, a bank account, a drivers license, or a club membership, your blockchain identity is how you establish yourself in the world.

<center>
<img src='../Images/key.PNG'/>
<figcaption>ECDSA algorithm to generate a public key based on the private key</figcaption>
</center>


Key Terms.

* Wallet Address: A unique identifier for your wallet.

* Private Key: A secret number that allows you to spend bitcoin from your wallet, this is normally a 256-bit random number between 1 and 2^256.

* Public Key: Publicly shareable key that cannot be used to spend bitcoin.

Entropy: Lack of order or predictability. The degree of disorder or randomness in the system.

<img src='../Images/keys.PNG'/>


## Blockchain core testnet

* Bitcoin: Network of bitcoin users creating and validating transactions.

* Bitcoin Core: Implementation of bitcoin that encompasses all of the software behind bitcoin.

* Debug Console: Tool that allows you to interact with data on the bitcoin blockchain.

Core nnetworks.

* Bitcoin Mainnet: Primary Network where live transactions take place.

* Bitcoin Testnet: Alternative Bitcoin blockchain that provides a test environment for applications.

* Bitcoin Regnet: Alternative test network for testing bitcoin applications.

<a href = "https://bitcoin.org/en/bitcoin-core/features/requirements">Bitcoin core documentation</a>

<a href = "https://www.youtube.com/watch?v=CxDSrYuzmyQ">Bitcoin core testnet for windows</a>

Get your coins from the <a href = "https://bitcoinfaucet.uo1.net/">Bitcoin TestNet Sandbox Faucet</a>

Get your coins from the <a href = "https://live.blockcypher.com/btc-testnet/">BlockCypher Block Explorer</a>

Access Networks:

* Access testnet: testnet = 1 in bitcoin.conf file

* Access regnet: regtest = 1 in bitcoin.conf file

## Blockchain data 

* Previous Block’s Hash: The hash value for the block that comes directly before a given block in the chain. This is what links blocks in the blockchain together.

* Time: The time the block was created is also held in the header.

* Merkle Root: The merkle root is a hash that represents every transaction included inside the block. To get the merkle root, pairs of transactions within a block are repeatedly hashed together. Each pair results in a single hash. Then the hash of 2 pairs of transactions are again hashed together, over and over again until you are left with a single hash value. Given that final hash value, known as the merkle root, you can now use the hash to search the original transactions or hash values that created them. This searching allows you to find the original transactions that made up the block when starting from this single hash value.

* Nonce: A nonce (stands for “number only used once") is a number used in bitcoin mining. The blockchain miners are solving for the nonce that when added to a hashed block, and those 2 values are rehashed, will solve the mining puzzle.

## Run scripts for ...

### Concepts

docker build -t hashapp .
Docker run --rm -ti hashapp sh


good documentation to run <a href = "https://stackoverflow.com/questions/48001082/oci-runtime-exec-failed-exec-failed-executable-file-not-found-in-path">docker bash</a>
