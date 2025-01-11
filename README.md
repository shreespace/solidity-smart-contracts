# Solidity Smart Contracts

A collection of Solidity smart contracts demonstrating various blockchain use cases, including escrow, multi-signature wallets, to-do lists, and a simple Ethereum wallet. These contracts are designed for learning purposes and can be easily deployed and tested on Ethereum-compatible networks.

## Contracts Included

### 1. **Escrow Contract**
The **Escrow** contract allows for a secure transaction between two parties, `Bob` and `Alice`, with an arbitrator overseeing the process. The contract ensures that both parties deposit the agreed-upon amount before proceeding with the transaction, and if either party withdraws, the deposited amount is refunded.

#### Key Functions:
- `newAgreement(address _bob, address _alice, uint _amount)`: Creates a new escrow agreement.
- `deposit(uint _id)`: Allows both parties to deposit funds into the contract.
- `refund(uint _id)`: Refunds the deposit to the respective party if the agreement is not fulfilled.
- `complete(uint _id, address _winner)`: Finalizes the escrow, with the arbitrator determining the winner and transferring funds accordingly.

---

### 2. **MultiSig Wallet**
The **MultiSigWallet** contract is a decentralized wallet that requires multiple owners to approve a transaction before it is executed. It ensures that funds can only be moved with the consensus of the required number of owners.

#### Key Functions:
- `submitTransaction(address _to, uint256 _value, bytes memory _data)`: Allows owners to submit a new transaction.
- `confirmTransaction(uint256 _txIndex)`: Lets owners confirm a transaction.
- `executeTransaction(uint256 _txIndex)`: Executes the transaction after required confirmations.
- `revokeConfirmation(uint256 _txIndex)`: Allows owners to revoke their confirmation.
- `getOwners()`: Retrieves a list of wallet owners.
- `getTransactionCount()`: Returns the number of transactions submitted.

---

### 3. **To-Do List Contract (Bloc)**
The **Bloc** contract is a simple to-do list application. It allows users to add, update, delete, and get tasks. Each task is stored with a description and a status (done or not).

#### Key Functions:
- `addTask(string calldata _task)`: Adds a new task to the to-do list.
- `getTask(uint _taskIndex)`: Retrieves the details of a task.
- `updateStatus(uint256 _taskIndex, bool _status)`: Updates the completion status of a task.
- `deleteTask(uint256 _taskIndex)`: Deletes a task from the list.
- `getTaskCount()`: Returns the number of tasks in the to-do list.

---

### 4. **Ether Wallet**
The **EtherWallet** contract allows the owner to withdraw Ether from the contract. It is a basic wallet contract that only the contract owner can interact with.

#### Key Functions:
- `withdraw(uint256 _amount)`: Allows the owner to withdraw Ether from the contract.
- `getBalance()`: Returns the current balance of the contract.

---
