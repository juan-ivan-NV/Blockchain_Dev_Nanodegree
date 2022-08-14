var Web3 = require("web3");
var web3 = new Web3('HTTP://127.0.0.1:7545');

web3.eth.gettransactionCount("0x831D08B80d98xxxxxxxxxxxxxxxxxxxE9E").then(console.log);
