

// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

// deploying a contract from another contract


import {SimpleStorage} from "./SimpleStorage.sol";


contract StorageFactory{
    
// uint256 public favoriteNumber
// type visibility name

SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract() public {

SimpleStorage newSimpleStorageContract = new SimpleStorage();
listOfSimpleStorageContracts.push(newSimpleStorageContract);
    }

// storing a number inside the simple storage contract

function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {

    listOfSimpleStorageContracts[_simpleStorageIndex].store(_newSimpleStorageNumber);
  
}
// reading a number from simple storage contract

function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
return mySimpleStorage.retrieve();
}

}