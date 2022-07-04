// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
contract MinterYT is ERC721, ERC721Enumerable, ERC721URIStorage, Ownable {
    using SafeMath for uint256;
    uint public mintPrice = 0.05 ether;
    uint256 public maxSupply;
    uint256 public totalSupp;
    bool public isMintEnabled;
    mapping (address => uint) public mintedWallets;
    function _beforeTokenTransfer(address from, address to, uint256 tokenId) internal override(ERC721, ERC721Enumerable){
        super._beforeTokenTransfer(from, to, tokenId);
    }

    function _burn(uint256 tokenId) internal override(ERC721, ERC721URIStorage){
        super._burn(tokenId);
    }
    function tokenURI(uint256 tokenId) public view override(ERC721, ERC721URIStorage) returns (string memory)
    {
        return super.tokenURI(tokenId);
    }
    function supportsInterface(bytes4 interfaceId) public view override(ERC721, ERC721Enumerable) returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }
    constructor() payable ERC721("TechMinter", "THM"){
        maxSupply = 2;
    }
    function toggleIsMintEnabled() external onlyOwner{
        isMintEnabled = !isMintEnabled;
    }
    function setMaxSupply(uint maxSupply_) external onlyOwner{
        maxSupply = maxSupply_;
    }
    function mint(string memory _uri) public payable {
        require(isMintEnabled, "minting not enabled");
        require(mintedWallets[msg.sender] < 1, "exeeds max per wallet");
        //require(msg.value == mintPrice, "wrong value");
        require(maxSupply > totalSupp, "sold out");
        mintedWallets[msg.sender]++;
        totalSupp++;
        uint256 tokenId = totalSupply();
        _safeMint(msg.sender, tokenId);
        _setTokenURI(tokenId, _uri);
    }
}