# FHEVM Bootcamp Starter Kits

Welcome to the **FHEVM Bootcamp Starter Kits** repository!  
This repository contains starter templates for **Homework 1–4** of the FHEVM Bootcamp.  
Each assignment is designed to help developers build real-world **confidential applications** on the Zama Protocol using FHEVM.

---

## Repository Structure

fhevm-bootcamp-starters/
├─ hw1-counter-hardhat-template/
├─ hw2-confidential-vault-template/
├─ hw3-sealed-auction-template/
└─ hw4-capstone-template/


Each homework folder contains:

- `contracts/` — Solidity smart contracts with FHEVM encrypted types (`euint32`)  
- `test/` — Hardhat test scripts to verify functionality  
- `hardhat.config.ts` — Hardhat configuration file  
- `package.json` — Dependencies and test scripts  
- `README.md` — Assignment-specific instructions  

---

## Homework Assignments

### HW1 — Encrypted Counter
- **Directory:** `hw1-counter-hardhat-template`  
- **Objective:** Implement a FHEVM encrypted counter supporting `increment()` and `read()`.  
- **Usage:**
```bash
cd hw1-counter-hardhat-template
npm install
npx hardhat test
GitHub Link: HW1 — Encrypted Counter

HW2 — Confidential Vault
Directory: hw2-confidential-vault-template

Objective: Implement a confidential vault supporting deposit(), withdraw(), and balanceOf().

Usage:

cd hw2-confidential-vault-template
npm install
npx hardhat test
GitHub Link: HW2 — Confidential Vault

HW3 — Sealed-Bid Auction
Directory: hw3-sealed-auction-template

Objective: Implement a sealed-bid auction where bids remain encrypted until reveal.

Usage:

cd hw3-sealed-auction-template
npm install
npx hardhat test
GitHub Link: HW3 — Sealed-Bid Auction

HW4 — Capstone Project
Directory: hw4-capstone-template

Objective: Build a confidential FHEVM dApp combining everything learned in HW1–HW3.

Usage:

cd hw4-capstone-template
npm install
npx hardhat test
GitHub Link: HW4 — Capstone Project

Getting Started
Clone the repository:

git clone https://github.com/Sunki77/fhevm-bootcamp-starters.git
cd fhevm-bootcamp-starters
Navigate to the homework folder you want to work on:

cd hw1-counter-hardhat-template
Install dependencies:

npm install
Run tests:

npx hardhat test
Requirements
Node.js >= 20

npm >= 9

Hardhat (already included in package.json)

Basic understanding of Solidity and Ethereum smart contracts

No prior FHE experience required

Contributing
If you want to contribute starter kit improvements or solutions:

git checkout -b feature/my-update
git add .
git commit -m "Describe your changes"
git push origin feature/my-update
Then submit a pull request on GitHub.

Notes
All contracts use FHEVM encrypted types (euint32) as examples.

Each homework has scaffolded unit tests to guide students.

This repository is intended for both cohort-based and self-paced learning.

License
This repository is released under the MIT License.
