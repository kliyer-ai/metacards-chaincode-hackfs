// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract Metacards is ERC721URIStorage {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721("Metacards", "MTC") {}

    function mint(address to, string memory tokenURI)
        public
        returns (uint256)
    {
        _tokenIds.increment();

        uint256 newTokenId = _tokenIds.current();
        _mint(to, newTokenId);
        _setTokenURI(newTokenId, tokenURI);

        return newTokenId;
    }
}