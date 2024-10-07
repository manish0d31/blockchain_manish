<img width="638" alt="image" src="https://github.com/user-attachments/assets/3b41e16a-7042-4622-b881-039fec1d723d">


# File Storage Verifier Smart Contract

## Vision

The File Storage Verifier project aims to create a decentralized platform where users can upload file information by storing their file hashes on the blockchain. This allows for secure verification of file integrity, providing an immutable record that can be used to prove ownership or verify that files have not been tampered with.

## Features

- **Upload File Hash**: Users can upload file information to the blockchain by storing the file hash and description. This allows them to create a secure, tamper-proof record of their files.
- **Verify File Hash**: Anyone can verify the integrity of a file by comparing the provided file hash against the stored hash, ensuring that the file matches the original.

## Contract Address

- **Network**: Aptos Mainnet/Testnet
- **Contract Address**: `0xde972b1a6feb4efcd60a125ab73bf263865e21512c7bdbb7ddd31da7c1aa7d50` (Replace with the actual contract address once deployed)

## How It Works

1. **Upload File Hash**:

   - Users call the `upload_file` function to store the hash of a file on the blockchain.
   - The function takes the file hash and a description as input and stores this information along with the owner’s address.

2. **Verify File Hash**:
   - Anyone can call the `verify_file` function to verify a file's integrity.
   - The function compares the provided file hash with the hash stored on-chain, ensuring that the file has not been altered since it was first uploaded.

## Future Scope

- **Multi-File Storage**: Enable users to upload and verify multiple files under the same account, providing a complete record of multiple file hashes.
- **Ownership Transfer**: Add functionality to transfer file ownership from one user to another, enabling secure digital asset transactions.
- **Timestamping**: Record a timestamp of when the file hash was uploaded to provide additional proof of the file’s history.
- **Access Control**: Introduce access control to allow users to manage who can verify their files or provide restricted access to certain parties.
- **IPFS Integration**: Integrate with a decentralized storage system like IPFS, allowing users to store files and link the IPFS address along with the hash for easy access.
- **Proof of Existence NFTs**: Create NFTs representing proof of file existence, allowing users to trade or sell the verification of their digital assets.

## Getting Started

- Clone this repository and install the necessary dependencies for the Aptos blockchain.
- Deploy the contract using your preferred deployment tool.
- Once deployed, users can upload file hashes and verify files through the smart contract functions.

## Contributing

We welcome contributions! If you have suggestions for improving the File Storage Verifier platform or want to add new features, feel free to open an issue or submit a pull request.

---

Feel free to modify and expand the README as your project evolves and new features are added!
