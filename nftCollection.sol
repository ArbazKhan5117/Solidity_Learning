// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.5.0 < 0.9.0;
contract Tokenmart{
     struct NftInfo{
     string totalItems;
     string url;
     string nftName;
     uint id;
     }
    
    NftInfo [] public collection;
    
     function setNftInfo (uint id,string memory name, string memory items, string memory link) public {
        NftInfo memory nftData;
        nftData.totalItems=items;
        nftData.url=link;
        nftData.nftName=name;
        nftData.id=id;
        collection.push(nftData);
        
     }

    function getNftData () public view returns (NftInfo [] memory){
        return collection;
    }

}