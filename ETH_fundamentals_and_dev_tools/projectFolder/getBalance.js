
var Web3 = require('web3');
var url = "https://mainnet.infura.io/v3/1ed************************d2b63";

var web3 = new Web3(url);

var address = '0x0716a17fbaee714f1e6ab0f9d59edbc5f09815c0';

web3.eth.getBalance(`${address}`).then(console.log); 

/** web3.eth.getBalance(address, (err, bal) => { balance = bal }).then(console.log); */

var balance = async() => {
    let result = await web3.eth.getBalance(`${address}`);
    return result;
 }


/** Convert the balance in wei to a balance in ether */
/** web3.utils.fromWei(balance, 'ether').then(console.log); */

/** Get Transaction Count */
web3.eth.getTransactionCount(`${address}`).then(console.log);