# ERC721 Contract
This repository contains the source code for an ERC-721 non-fungible token (NFT) project on the Ethereum blockchain. The project implements the ERC-721 standard, allowing for the creation, management, and trading of unique digital assets.

# Key Features:

  * ERC-721 Smart Contract: The core smart contract implements the ERC-721 standard, providing functionality for creating, registering, and managing NFTs.
  * Token Creation: Users can create new NFTs by registering them on the blockchain.
  * Token Transfer: NFTs can be transferred between users, ensuring secure and decentralized ownership.
  * Token Metadata: Each NFT can be associated with metadata, such as images, descriptions, and other attributes.
  * ERC-165 Compatibility: The contract is designed to be compatible with the ERC-165 interface, ensuring seamless integration with other Ethereum-based applications.

# Dependencies
This contract depends on the following interfaces:
 * IERC721
 * IERC165
 * IERC721TokenReceiver
 * IERC721Metadata
 * IERC721Enumerable

Note: These interfaces defined in separate file called `interface` and imported to the main contract.

# Usage
 * Deploy the contract with a collection name and symbol.
 * Use the `mint()` function to create new NFTs, specifying the owner address and metadata URI.
 * Utilize transfer functions (`safeTransferFrom()`, `transferFrom()`) to transfer ownership of NFTs.
 * Leverage approval functions (`approve()`, `setApprovalForAll()`) to grant permission for others to transfer NFTs on your behalf.
 * Access information about NFTs and the collection using functions like `balanceOf()`, `ownerOf()`, `tokenURI()`, etc.

# Error Codes
The contract utilizes specific error codes to indicate issues during function calls. Here's a reference:

 * 01: Zero address is not valid!
 * 02: The token is invalid!
 * 03: At least one of input data is not valid!
 * 04: The recipient contract couldn't handle the NFT receipt!
 * 05: The account is not authorized!
 * 06: The NFT index is invalid!
 * 07: Only the owner of collection can do this job!
 * 08: Only collection owner can rename it!
 * 09: Owner address is zero!

# Functions
 * `constructor()`: Deploys the contract, setting the collection name and symbol.
 * `supportsInterface()`: Checks if the contract supports a specific interface based on its identifier.
 * `name()`: Returns the collection name as a string.
 * `symbol()`: Returns the collection symbol as a string.
 * `mint()`: Mints a new NFT with the provided details and assigns ownership to the specified address.
 * `burn()`: Burns an existing NFT, removing it from the collection.
 * `totalSupply()`: Returns the total number of NFTs minted in the collection.
 * `tokenURI()`: Returns the URI of the metadata associated with a specific NFT.
 * `tokenByIndex()`: Retrieves the ID of the NFT at a specific index within the collection (follows minting order).
 * `balanceOf()`: Returns the number of NFTs owned by a particular address.
 * `tokenOfOwnerByIndex()`: Gets the ID of the _indexth NFT owned by the specified address.
 * `ownerOf()`: Returns the address of the current owner for a specific NFT.
 * `collectionRename()`: Allows the collection owner to rename the collection.
 * `safeTransferFrom()`: Securely transfers ownership of an NFT from one address to another (with optional data).
 * `safeTransferFrom()`: Similar to the above function, but without data.
 * `transferFrom()`: Transfers ownership of an NFT (less secure alternative to safeTransferFrom).
 *`approve()`: Grants permission to a specific address to transfer a particular NFT on the owner's behalf.
 * `setApprovalForAll()`: Sets a general approval for an address to transfer any of the owner's NFTs.
 * `getApproved()`: Returns the address approved to transfer a specific NFT.
 * `isApprovedForAll()`: Checks if an operator is approved to transfer all NFTs owned by a specific address.
 * `interfaceIdGenerator()`: Generates function selectors for all supported interfaces.
 * `onERC721Received()`: Callback function used for secure transfers when the recipient is a contract.

 # Events
 * `CollectionCreate`: This event is emitted upon deployment of the contract. It contains details about the newly created collection, including the owner's address, collection name, and symbol.
 * `CollectionRename`: This event is triggered whenever the collection name or symbol is changed using the `collectionRename()` function. It provides information on both the previous and current names and symbols.
 * `Transfer`: This event is emitted whenever an NFT is transferred from one address to another. It logs the addresses of the previous and new owners, along with the ID of the transferred NFT.
 * `Approval`: This event is triggered when an address is approved to transfer a specific NFT on the owner's behalf using the `approve()` function. It records the owner's address, the approved address, and the ID of the affected NFT.
 * `ApprovalForAll`: This event is emitted whenever an operator is granted (or revoked) permission to transfer any of the NFTs owned by a specific address using the `setApprovalForAll()` function. It logs the owner's address, the operator's address, and a boolean indicating approval status (true for approved, false for revoked).

# License:
MIT License: The project is licensed under the MIT License, allowing for free use, modification, and distribution.
