# ETH-AVAX-Module- 1 FUNCTIONS & ERRORS

This Solidity smart contract is designed to demonstrate basic validation and error handling techniques. It includes functions to update a stored id while ensuring that certain conditions are met.


## Getting Started

To use or deploy this contract, you'll need a development environment with Solidity compiler and a suitable Ethereum development framework like Truffle or Remix.

### Prerequisites

- Solidity Compiler: Make sure you have a Solidity compiler version that is compatible with the contract (e.g., ^0.8.0).
- Ethereum Development Framework: Install and set up an Ethereum development framework like Truffle, Remix, or any other of your choice.

## Contract Overview

The `StudentIDupdationsystem` is a basic Ethereum smart contract that allows the owner to update a stored Student ID. It demonstrates the usage of `require()`, `assert()`, and `revert()` statements for input validation, invariant checking, and custom error handling.

### Contract Variables

- `owner`: This is the address of the contract owner, set during contract deployment.
- `StudentID`: A public unsigned integer variable initialized to 50, representing the stored ID.

### Events

- `StudentIDUpdated(uint256 newStudentID)`: An event emitted whenever the `ID` is successfully updated. It includes the new ID as an argument.

### Constructor

The constructor of the contract initializes the `owner` address to the address of the sender who deploys the contract.

### Functions

- `updateStudentID(uint256 newStudentID) external`: This function allows the contract owner to update the `ID` with the provided `newStudentID`. It includes the following validation steps:
  - It uses `require()` to ensure that the `newStudent ID` is greater than 1.
  - It uses `assert()` to verify that the sender is the owner of the contract.
  - It uses `revert()` to provide a custom error message if `newStudentID` exceeds 1000.
  If all validation checks pass, the `StudentID` is updated, and the `StudentIDUpdated` event is emitted.

## Usage

1. Deploy the contract to the Ethereum network.
2. The `owner` of the contract can call the `updateStudentID(uint256 newStudentID)` function to update the stored `ID`.
3. The function will perform input validation and revert the transaction if any of the validation conditions fail.
4. The contract emits the `StudentIDUpdated` event when the `StudentID` is successfully updated.

## Author Name

Ishika Tinna
