//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "hardhat/console.sol";

contract nfts is ERC721URIStorage {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor () ERC721 ("RandoTestNFT","RDTEST") {
        console.log("NFT ID: %s minted to %s", newItemId, msg.sender);
    }

    function makeAnEpicNFT () public {
        unit256 newItemId = _tokenIds.current();

        _safeMint(msg.sender, newItemId);

        _setTokenURI(newItemId, "https://jsonkeeper.com/b/5F1W");

        _tokenIds.increment();
    }

}

