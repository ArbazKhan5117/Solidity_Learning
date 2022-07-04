// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.5.0 < 0.9.0;
contract Tokenmart{
    uint public count;
     struct NftInfo{
     string totalItems;
     string url;
     string nftName;
     }
    mapping (uint => NftInfo) AllNfts;
     function setNftInfo (uint id,string memory name, string memory items, string memory link) public {
         AllNfts[id].totalItems = items;
         AllNfts[id].url = link;
         AllNfts[id].nftName = name;
         count +=1;
     }
     function getNftInfo (uint id) public view returns (string memory, string memory, string memory){
         return (AllNfts[id].totalItems, AllNfts[id].url, AllNfts[id].nftName);
     }
     function getCollectionSize() public view returns (uint){
         return count;
     } 

}