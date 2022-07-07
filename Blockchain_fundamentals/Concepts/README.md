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








## Run scripts for ...

### Concepts

docker build -t hashapp .
Docker run --rm -ti hashapp sh


good documentation to run <a href = "https://stackoverflow.com/questions/48001082/oci-runtime-exec-failed-exec-failed-executable-file-not-found-in-path">docker bash</a>
