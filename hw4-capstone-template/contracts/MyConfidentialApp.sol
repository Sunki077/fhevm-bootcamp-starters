// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// Minimal confidential application example
contract MyConfidentialApp {
    mapping(address => euint32) private data;

    function setData(euint32 value) public {
        data[msg.sender] = value;
    }

    function getData(address user) public view returns (euint32) {
        return data[user];
    }
}
