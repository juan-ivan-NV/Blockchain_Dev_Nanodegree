// -- Step 1: Set up the appropriate configuration

var Web3 = require("web3");
const EthereumTx = require('ethereumjs-tx').Transaction;
var web3 = new Web3('HTTP://127.0.0.1:7545');


// -- Step 2: Set the sending and receiving addresses for the transaction.
var sendingAddress = '0xD609xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxAE';
var receivingAddress = '0x99xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxE19';


// -- Step 3: Check the balances of each address
web3.eth.getBalance(sendingAddress).then(console.log);
web3.eth.getBalance(receivingAddress).then(console.log);

/*##########################
CREATE A TRANSACTION
##########################*/

// -- Step 4: Set up the transaction using the transaction variables as shown 
var rawTransaction ={
    nonce: web3.utils.toHex(1),
    to: receivingAddress,
    gasPrice: web3.utils.toHex(20000000),
    gasLimit: web3.utils.toHex(30000),
    value: web3.utils.toHex(100),
    data: web3.utils.toHex("")
};


// -- Step 5: View the raw transaction rawTransaction


// -- Step 6: Check the new account balances (they should be the same) 
web3.eth.getBalance(sendingAddress).then(console.log); 
web3.eth.getBalance(receivingAddress).then(console.log);


/*##########################
Sign the Transaction
##########################*/

// -- Step 7: Sign the transaction with the Hex value of the private key of the sender
var privateKey = 'bcfef8xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxa';
var senderPrivateKeyHex = new Buffer.from(privateKey,'hex');
var transaction = new EthereumTx(rawTransaction);
transaction.sign(senderPrivateKeyHex);


/*#########################################
Send the transaction to the networks
#########################################*/


// -- Step 8: Send the serialized signed transaction to the Ethereum network. 
var serializedTransaction = transaction.serialize(); 
web3.eth.sendSignedTransaction(serializedTransaction);




