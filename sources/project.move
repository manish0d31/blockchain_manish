module MyModule::FileStorageVerifier {

    use aptos_framework::signer;
    use std::vector;

    /// Struct representing a file record.
    struct FileRecord has store, key {
        owner: address,         // Address of the file owner
        file_hash: vector<u8>,  // Hash of the uploaded file
        description: vector<u8>, // Description of the file
    }

    /// Function for a user to upload a file and store its hash on the blockchain.
    public fun upload_file(owner: &signer, file_hash: vector<u8>, description: vector<u8>) {
        let record = FileRecord {
            owner: signer::address_of(owner),
            file_hash,
            description,
        };
        move_to(owner, record);
    }

    /// Function to verify a file's hash for a given user.
    public fun verify_file(owner_address: address, provided_hash: vector<u8>) acquires FileRecord {
        let record = borrow_global<FileRecord>(owner_address);

        // Ensure the provided hash matches the stored hash
        assert!(record.file_hash == provided_hash, 1);
    }
}
