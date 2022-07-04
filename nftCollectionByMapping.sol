// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.5.0 < 0.9.0;
contract Tokenmart{
     struct NftInfo{
     string totalItems;
     string url;
     string nftName;
     uint id;
     }
    //mapping (uint => NftInfo) AllNfts;
    mapping (uint => NftInfo[]) public AllNfts;
    
     function setNftInfo (uint id,string memory name, string memory items, string memory link) public {
        AllNfts[id].push(NftInfo(items, link, name, id));
        
     }
    //  function getNftInfo (uint id) public view returns (string memory, string memory, string memory){
    //      for(uint i; i<count; i++){
             
    //      }
    //      return (AllNfts[id].totalItems, AllNfts[id].url, AllNfts[id].nftName);
    //  }

    function getNftData () public view returns (AllNfts){
        return AllNfts;
    }

}