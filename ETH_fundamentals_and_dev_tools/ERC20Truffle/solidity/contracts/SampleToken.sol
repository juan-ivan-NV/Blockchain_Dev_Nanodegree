pragma solidity >=0.4.24;

import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
//C:\Users\coldc\Documents\github_jinb\Blockchain_Dev_Nanodegree\ETH_fundamentals_and_dev_tools\ERC20Truffle\node_modules\openzeppelin-solidity\contracts\token\ERC20\ERC20.sol

contract SampleToken is ERC20 {
    constructor(uint256 initialSupply) ERC20("SampleToken", "ST") {
        _mint(msg.sender, initialSupply);
    }
}