// SPDX-License-Identifier: MIT

pragma solidity ^0.5.12;

// This is a sample contract that receives NFTs from ERC721 contract.
// We just implement the base functionalities that this contract must execute to handle the NFT receipt.
// Other functionalities can be implemented depending on your project and needs.
contract recipientContract{
    function onERC721Received(address _operator, address _from, uint256 _tokenId, bytes calldata _data) external returns(bytes4){
        //Handle the receipt of an NFT like:
        // Store the received NFT
        // Perform additional checks or actions
        return bytes4(keccak256("onERC721Received(address,address,uint256,bytes)"));
    }
}