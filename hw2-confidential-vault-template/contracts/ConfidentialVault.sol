// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// Confidential Vault example
contract ConfidentialVault {
    mapping(address => euint32) private balances;

    // Deposit encrypted amount
    function deposit(euint32 amount) public {
        balances[msg.sender] += amount;
    }

    // Withdraw encrypted amount
    function withdraw(euint32 amount) public {
        require(balances[msg.sender] >= amount, "Insufficient funds");
        balances[msg.sender] -= amount;
    }

    // Check encrypted balance
    function balanceOf(address user) public view returns (euint32) {
        return balances[user];
    }
}
