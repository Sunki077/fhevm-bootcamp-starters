# FHEVM Bootcamp Starter Kits

Welcome to the **FHEVM Bootcamp Starter Kits** repository! This repository contains starter templates for Homework 1–4 of the FHEVM Bootcamp. Each assignment is designed to help developers build real-world confidential applications on the Zama Protocol using FHEVM (Fully Homomorphic Encryption Virtual Machine).

## 📁 Repository Structure

```text
fhevm-bootcamp-starters/
├── hw1-counter-hardhat-template/      # Week 1: Encrypted Counter
├── hw2-confidential-vault-template/   # Week 2: Confidential Vault
├── hw3-sealed-auction-template/       # Week 3: Sealed-Bid Auction
└── hw4-capstone-template/             # Week 4: Capstone Project

```

Each homework folder contains:

* **contracts/** — Solidity smart contracts with FHEVM encrypted types (`euint32`, `euint64`, etc.).
* **test/** — Hardhat test scripts to verify functionality.
* **hardhat.config.ts** — Hardhat configuration with FHEVM support.
* **package.json** — Dependencies and test scripts.
* **README.md** — Assignment-specific instructions.

---

## 📚 Homework Assignments

### 🔹 HW1 — Encrypted Counter

**Directory:** `hw1-counter-hardhat-template`

* **Objective:** Implement an FHEVM encrypted counter supporting `increment()` and `read()`.
* **Key Concepts:** `euint32`, `TFHE.asEuint32()`, `TFHE.decrypt()`.
* **Quick Start:**
```bash
cd hw1-counter-hardhat-template
npm install
npx hardhat test

```



👉 **[View HW1 Folder](https://github.com/Sunki77/fhevm-bootcamp-starters/tree/main/hw1-counter)**

### 🔹 HW2 — Confidential Vault

**Directory:** `hw2-confidential-vault-template`

* **Objective:** Implement a confidential vault supporting `deposit()`, `withdraw()`, and `balanceOf()`.
* **Key Concepts:** Encrypted balances, `allow()`, `transferFrom()`.
* **Quick Start:**
```bash
cd hw2-confidential-vault-template
npm install
npx hardhat test

```



👉 **[View HW2 Folder](https://github.com/Sunki77/fhevm-bootcamp-starters/tree/main/hw2-vault)**

### 🔹 HW3 — Sealed-Bid Auction

**Directory:** `hw3-sealed-auction-template`

* **Objective:** Implement a sealed-bid auction where bids remain encrypted until the reveal phase.
* **Key Concepts:** Encrypted comparisons, commit-reveal pattern, `TFHE.lt()`, `TFHE.eq()`.
* **Quick Start:**
```bash
cd hw3-sealed-auction-template
npm install
npx hardhat test

```



👉 **[View HW3 Folder](https://github.com/Sunki77/fhevm-bootcamp-starters/tree/main/hw3-auction)**

### 🔹 HW4 — Capstone Project

**Directory:** `hw4-capstone-template`

* **Objective:** Build a confidential FHEVM dApp combining everything learned in HW1–HW3.
* **Options:** * Private token with confidential transfers.
* Blind auction with fully encrypted bids.
* Confidential DAO voting system.


* **Quick Start:**
```bash
cd hw4-capstone-template
npm install
npx hardhat test

```



👉 **[View HW4 Folder](https://github.com/Sunki77/fhevm-bootcamp-starters/tree/main/hw4-capstone)**

---

## 🚀 Getting Started

1. **Clone the repository**
```bash
git clone https://github.com/Sunki077/fhevm-bootcamp-starters.git
cd fhevm-bootcamp-starters

```


2. **Navigate to your homework**
```bash
cd hw1-counter-hardhat-template
# or cd hw2-confidential-vault-template, etc.

```


3. **Install dependencies**
```bash
npm install

```


4. **Run tests**
```bash
npx hardhat test

```



---

## ✅ Prerequisites

* **Node.js** >= 20
* **npm** >= 9 (or yarn / pnpm)
* **Hardhat** (included in each template)
* **Basic knowledge** of Solidity and Ethereum smart contracts.
* *No prior FHE or cryptography knowledge required — we'll teach you!*

---

## 🧪 Testing Philosophy

Each homework comes with comprehensive test suites that:

1. **Validate** correct usage of FHEVM encrypted types.
2. **Check** access control and re-encryption permissions.
3. **Simulate** multi-user scenarios.
4. **Provide** clear failure messages to guide your debugging process.

**Tip:** Run tests frequently as you implement your solutions!

---

## 🤝 Contributing

We welcome contributions to improve these starter kits!

1. Check out a branch: `git checkout -b feature/improve-template`
2. Commit your changes: `git commit -m "Description of improvement"`
3. Open a **Pull Request** on [GitHub](https://github.com/Sunki77/fhevm-bootcamp-starters).

---

## 📝 Important Notes

* All contracts use FHEVM encrypted types (`euint32`, `euint64`, `ebool`, etc.).
* Each homework includes scaffolded unit tests to guide students.
* **Solutions are not included** in this public repository (maintained separately for instructors).
* This repository supports both cohort-based and self-paced learning.

## 📄 License

This repository is released under the **MIT License**. Feel free to use, modify, and distribute these templates for educational and commercial purposes.

---

**Ready to build privacy-preserving dApps?** 👉 **[Start with HW1 →](https://github.com/Sunki77/fhevm-bootcamp-starters/tree/main/hw1-counter-hardhat-template)**

---

Would you like me to help you draft the specific `README.md` files for the individual homework subdirectories as well?
