// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.5.0 < 0.9.0;

contract ItemManager {
// We map user addresses to Item arrays, this way, each address has an array of Items assigned to them.
mapping (address => Item[]) public items;

// The structs of the Item.
struct Item {
  string name;
  string description;
  uint256 expiryDate;
}

// Emits an event when a new item is added, you can use this to update remote item lists.
event itemAdded(address user, string name, string description, uint256 exipryDate);


// Gets the items for the used who called the function
function getItems() public view returns (Item [] memory){
   return items[msg.sender];
}


// Adds an item to the user's Item list who called the function.
function addItem(string memory name, string memory description, uint256 memory expiryDate) public {

    // require the name to not be empty.
    require(bytes(name).length > 0, "name is empty!");

    // require the description to not be empty.
    require(bytes(description).length > 0, "description is empty!");

    // require the expiryDate to not be empty.
    require(bytes(expiryDate).length > 0, "expiryDate is empty!");

    // adds the item to the storage.
    Item newItem = Item(name, description, expiryDate);
    items[msg.sender].push(newItem);

    // emits item added event.
    emit itemAdded(msg.sender, newItem.name, newItem.description, newItem.expiryDate);
}

}