pragma solidity ^0.4.25;

contract mappingExample{
    // Storage

    mapping (string => string) capitals;

    // Add a key value pair to mapping
    function addCapital(string country, string capital) public{
        // Store the capital and country in the mapping
        capitals[country] = capital;
    }

    // Access the mapping using a key
    function getCapital(string _country) public view returns (string) {
        return capitals[_country];
    }

    // Delete  a eky value pair in the mapping
    function removeCapital (string country) public {
        delete(capitals[country]);
    }
}