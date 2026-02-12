# HW2: Confidential Vault

Now that you know how to store a single encrypted value, let's build a vault where multiple users can have secret balances.

## 🎯 Objective

Create a vault where users can deposit and withdraw "tokens," but the individual balances are hidden from everyone except the owner.

## 🛠 Tasks

Open `contracts/ConfidentialVault.sol`:

* **Mapping:** Create a mapping `mapping(address => euint32) internal balances`.
* **`deposit(bytes calldata encryptedAmount)`:** Add the encrypted amount to `msg.sender`'s balance.
* **`withdraw(bytes calldata encryptedAmount)`:** Use FHE logic to check if the user has enough balance before subtracting.
* **Access Control:** Implement a view function that uses `TFHE.reencrypt` so a user can see their own balance in their wallet, but no one else can.

## 🧪 Testing

```bash
npx hardhat test

```

> **FHE Tip:** In FHEVM, you can't use a standard `if (balance > amount)`. You must use `TFHE.select()` or similar logic to perform "conditional" operations on encrypted data!

