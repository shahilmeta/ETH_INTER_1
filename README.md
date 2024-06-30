# NumberProperties Smart Contract

## Overview

The `NumberProperties` smart contract is designed to perform checks on numbers to determine if they are perfect squares. It provides several methods to perform these checks using `require`, `revert`, and `assert` statements. 

## Prerequisites

To deploy and interact with this contract, you will need:
- Solidity compiler version 0.7.0 or higher, but less than 0.9.0
- A development environment like Remix, Truffle, or Hardhat
- An Ethereum wallet like MetaMask for deployment and interaction

## Contract Details

### Functions

1. **testRequireIsPerfectSquare**
    - **Description**: Checks if a given number is a perfect square using the `require` statement.
    - **Parameters**: `uint _num` - The number to check.
    - **Returns**: `string` - Confirmation message if the number is a perfect square.
    - **Reverts**: If the number is not a perfect square with the message "Number is not a perfect square".

2. **testRevertIfNotPerfectSquare**
    - **Description**: Checks if a given number is a perfect square using an `if` statement and `revert`.
    - **Parameters**: `uint _num` - The number to check.
    - **Returns**: `string` - Confirmation message if the number is a perfect square.
    - **Reverts**: If the number is not a perfect square with the message "Number must be a perfect square".

3. **testAssertIsPerfectSquare**
    - **Description**: Asserts that the state variable `Number` is a perfect square.
    - **Parameters**: None.
    - **Returns**: `string` - Confirmation message if `Number` is a perfect square.
    - **Reverts**: If `Number` is not a perfect square.

### Internal Functions

1. **_isPerfectSquare**
    - **Description**: Determines if a number is a perfect square.
    - **Parameters**: `uint _num` - The number to check.
    - **Returns**: `bool` - `true` if the number is a perfect square, otherwise `false`.

2. **sqrt**
    - **Description**: Calculates the integer square root of a number using the Babylonian method.
    - **Parameters**: `uint x` - The number to find the square root of.
    - **Returns**: `uint` - The integer square root of the number.

### State Variables

- **Number**
    - **Type**: `uint`
    - **Description**: Example state variable holding a number to check.
    - **Default Value**: `16`

## Usage

### Deployment

1. Open your preferred development environment (Remix, Truffle, Hardhat).
2. Copy and paste the contract code into a new Solidity file.
3. Compile the contract using the Solidity compiler version specified.
4. Deploy the contract to an Ethereum network of your choice (local, testnet, or mainnet).

### Interacting with the Contract

1. **Checking if a number is a perfect square:**
    - Call `testRequireIsPerfectSquare` with the number you want to check. If the number is not a perfect square, the transaction will revert with the message "Number is not a perfect square".
    - Call `testRevertIfNotPerfectSquare` with the number you want to check. If the number is not a perfect square, the transaction will revert with the message "Number must be a perfect square".

2. **Asserting that a number is a perfect square:**
    - Ensure the state variable `Number` is set to the number you want to check.
    - Call `testAssertIsPerfectSquare`. If `Number` is not a perfect square, the transaction will revert.

## Example

Here is an example of how to interact with the contract:

1. Deploy the contract.
2. Call `testRequireIsPerfectSquare(25)` to check if 25 is a perfect square. The function should return "It is a perfect square".
3. Call `testRevertIfNotPerfectSquare(20)` to check if 20 is a perfect square. The transaction should revert with the message "Number must be a perfect square".
4. Change the state variable `Number` to 36.
5. Call `testAssertIsPerfectSquare()`. The function should return "Number is indeed a perfect square".
