Decentralized File Sharing and Access Control Dapp

Description

This project is a decentralized file-sharing platform built on the Ethereum blockchain, leveraging smart contracts for secure storage and granular access control.  Users can upload files, grant or revoke access to specific addresses, and view their shared files.

Key Features

File Upload and Storage: Users can securely upload files to the decentralized storage system (IPFS is a common choice, but not explicitly implemented in the current frontend).
Access Control: The smart contract manages file ownership and allows users to explicitly grant or revoke access to other Ethereum addresses.
Visibility and Privacy: Users can only view files that have been explicitly shared with them, ensuring privacy.
Decentralized Architecture: The core functionality resides on the blockchain, ensuring censorship resistance and data integrity.
Technical Stack

Smart Contracts: Solidity (>=0.7.0 <=0.9.0)
Frontend (Initial): React (Create React App)
Potential Future Enhancements: IPFS (or other decentralized storage), Web3.js (for blockchain interaction)
Smart Contract Functionality

Addfiles(address _user, string memory url): Adds a file URL to the user's list of files.
Allow(address user): Grants the specified address access to the user's files.
Disallow(address user): Revokes the specified address's access to the user's files.
Display(address _user): Returns a list of file URLs for the specified user (only if the caller has access).
Shareaccess(): Returns a list of addresses with their access status for the calling user's files.
Getting Started

Clone the Repository:

Bash
git clone https://github.com/ViditGalav/Web3.0-G-Drive-
Use code with caution.
content_copy
Smart Contract Deployment:

Install development tools (Truffle, Ganache, etc.).
Compile and deploy the Upload.sol contract to your preferred Ethereum network (e.g., local Ganache, testnet, mainnet).
Update the frontend (app.js) with your contract address and ABI.
Frontend Development (Current Status):

npm install
npm start
