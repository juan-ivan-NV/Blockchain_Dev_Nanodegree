const HDWalletProvider = require("truffle-hdwallet-provider");
// const fs = require('fs');
const mnemonic = "<METAMASK SEED>";

module.exports = {
    development: {
        host: "127.0.0.1",     // Localhost (default: none)
        port: 9545,            // Standard Ethereum port (default: none)
        network_id: "*",       // Any network (default: none)
       },
       rinkeby: {
        provider: () => new HDWalletProvider(mnemonic, `https://rinkeby.infura.io/v3/1edf5199ccfe4406bf8a69a999ed2b63`),
          network_id: 4,       // rinkeby's id
          gas: 4500000,        // rinkeby has a lower block limit than mainnet
          gasPrice: 10000000000
      }
}