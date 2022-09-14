pragma solidity ^0.4.24;

// Define contract 'Lemonade stand'
contract LemonadeStand {

    // Variable owner
    address owner;
    // Variable SKU count
    uint skuCount;

    // Event 'State' with value 'ForSale'
    enum State {ForSale, Sold}

    // Struc: Item. name, sku, price, state, seller, buyer
    struct Item {
        string name;
        uint sku;
        uint price;
        State state;
        address seller;
        address buyer;
    }

    // Define mapping 'items' that maps the sku (a number) to an Item.
    mapping  (uint => Item) items;

    // Events 
    event ForSale (uint skuCount);

    event Sold (uint sku);
    
    // Modifier: Only owner to see if msg.sender == owner of the contract
    modifier verifyCaller (address _address) {
        require(msg.sender == owner);
        _;
    }

    // Define a modifier that checks if the paid amount is sufficient to cover the price
    modifier paidEnough (uint _price) {
        require(msg.value >= _price);
        _;
    }

    // Define a modifier that checks if an item.state of a sku is ForSale
    modifier  forSale (uint _sku) {
        require(items[_sku].state == State.ForSale);
        _;
    }

    // Define a modifier that checks if an item.state of a sku is Sold
    modifier sold(uint _sku) {
        require(items[_sku].state == State.Sold);
        _;
    }
}