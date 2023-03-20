// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HotelRoom {
    // Ether payments
    // Modifiers
    // Visibility
    // Events
    // Enums

    // Change the status of the room to vacant or accupied
    enum Statuses {
        Vacant, 
        Occupied
    }
    Statuses public currentStatus;

    event Occupy(address _occupant, uint _value);


    // Address that can receive an ETH currency
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
        currentStatus = Statuses.Vacant;
    }

    modifier onlyWhileVacant {
        // Check if status is occupied
        require(currentStatus == Statuses.Vacant, "Currently occupied.");
        _;
    }

    modifier costs(uint _amount) {
        // Check price
        require(msg.value >= _amount, "Not enough ether provided.");
        _;
    }

    function book() public payable onlyWhileVacant costs(2 ether) {
        // Set the value to accupied
        currentStatus = Statuses.Occupied;
        
        // msg.value to send certain amount to owner
        // owner.transfer(msg.value);
        (bool sent, bytes memory data) = owner.call{value: msg.value}("");
        require(true);

        emit Occupy(msg.sender, msg.value);

    }

}