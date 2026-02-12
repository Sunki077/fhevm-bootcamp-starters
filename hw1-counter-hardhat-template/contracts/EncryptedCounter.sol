// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// Encrypted Counter example for FHEVM
contract EncryptedCounter {
    euint32 private counter;

    constructor() {
        counter = 0;
    }

    // Increment the counter
    function increment() public {
        counter += 1;
    }

    // Read the encrypted counter
    function read() public view returns (euint32) {
        return counter;
    }
}
