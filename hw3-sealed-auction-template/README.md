# HW3: Sealed-Bid Auction

Let's get competitive! This week, you'll implement a "Sealed-Bid" auction where bidders don't know what others have bid until the auction ends.

## 🎯 Objective

Build an auction contract where:

1. Users submit encrypted bids.
2. The contract tracks the "current highest bid" without ever decrypting the bids during the process.
3. The winner is revealed only at the end.

## 🛠 Tasks

Open `contracts/SealedAuction.sol`:

* **`bid(bytes calldata encryptedBid)`:** Compare the new bid with the `highestBid` using `TFHE.gt()`.
* **State Update:** Use `TFHE.select()` to update the `highestBid` if the new bid is greater.
* **Winner Reveal:** Implement a function that only the owner can call to decrypt the final result.

## 🧪 Testing

```bash
npx hardhat test

```

> **FHE Tip:** `TFHE.gt(a, b)` returns an `ebool` (an encrypted boolean). You use this `ebool` as the "control" in `TFHE.select(ebool, valueIfTrue, valueIfFalse)`.
