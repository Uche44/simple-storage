// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

// simple contract to store name and favorite number and to map name to favorite number

contract SimpleStorage {

    uint256 myFavoriteNumber;

    struct Person {
        string name;
       uint256 favoriteNumber;
    }

    Person[] public listOfPeople;

    mapping (string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public virtual  {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256){
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public{
        listOfPeople.push(Person(_name, _favoriteNumber));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}