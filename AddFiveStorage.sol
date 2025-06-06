// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

// inheritance and overriding a function

import {SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage{

function store(uint256 _newNumber) public override {
    myFavoriteNumber = _newNumber + 10;
}
}