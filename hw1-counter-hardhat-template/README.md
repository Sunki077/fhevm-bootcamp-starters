HW1: Encrypted Counter
Welcome to your first FHEVM task! In this assignment, you will build a simple counter where the value is stored in an encrypted state.

🎯 Objective
Implement a smart contract that allows users to:

Increment the counter using an encrypted value.

Decrypt the counter value to see the current total (for educational purposes).

🛠 Tasks
Open contracts/Counter.sol and complete the following:

Define the state variable: Use euint32 to store the count.

increment(bytes calldata encryptedValue): Convert the input bytes into an encrypted type using TFHE.asEuint32() and add it to the state.

getCounter(): Use TFHE.decrypt() to return the plaintext value.

🧪 Testing
Run the local FHEVM node and execute:

Bash
npx hardhat test
FHE Tip: Remember that TFHE.decrypt() is usually only for debugging or very specific use cases. In a real app, you'd want to keep data encrypted as long as possible!
