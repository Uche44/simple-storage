

# SimpleStorage & StorageFactory Contracts

## Introduction

This project consists of a set of Solidity smart contracts designed to demonstrate basic concepts like data storage, inheritance, and contract deployment.

There are three key components:

1. **SimpleStorage**: A contract that stores a favorite number for a person and allows mapping names to favorite numbers.
2. **AddFiveStorage**: An extension of `SimpleStorage` that overrides the `store` function to add a constant (10) to the favorite number.
3. **StorageFactory**: A factory contract that allows the deployment of multiple `SimpleStorage` contracts and interaction with them.

## Contract Overview

### 1. `SimpleStorage`

The `SimpleStorage` contract allows users to:

* Store a favorite number.
* Retrieve the stored favorite number.
* Add a person’s name with their favorite number to a list and map the name to the favorite number.

#### Functions:

* **store(uint256 \_favoriteNumber)**: Stores a favorite number.
* **retrieve()**: Retrieves the stored favorite number.
* **addPerson(string memory \_name, uint256 \_favoriteNumber)**: Adds a person’s name and favorite number to the list.

### 2. `AddFiveStorage`

The `AddFiveStorage` contract is an extension of the `SimpleStorage` contract. It overrides the `store` function to add 10 to the favorite number before storing it.

#### Function:

* **store(uint256 \_newNumber)**: Overrides the `store` function from `SimpleStorage` to add 10 to the provided number before storing it.

### 3. `StorageFactory`

The `StorageFactory` contract allows you to create multiple `SimpleStorage` contracts and interact with them. It provides functionality to:

* Deploy new `SimpleStorage` contracts.
* Store data in a specific `SimpleStorage` contract.
* Retrieve data from a specific `SimpleStorage` contract.

#### Functions:

* **createSimpleStorageContract()**: Deploys a new `SimpleStorage` contract and stores its reference.
* **sfStore(uint256 \_simpleStorageIndex, uint256 \_newSimpleStorageNumber)**: Stores a number in a specific `SimpleStorage` contract by index.
* **sfGet(uint256 \_simpleStorageIndex)**: Retrieves the stored number from a specific `SimpleStorage` contract by index.







