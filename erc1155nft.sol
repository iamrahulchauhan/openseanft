pragma solidity >=0.4.22 <0.9.0;


import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC1155/ERC1155.sol";

contract erc1155nft is ERC1155 {
    //TWO NFTs with erc1155 standard. 
    uint256 public constant GOLD = 1;
    uint256 public constant SILVER = 2;
    

    constructor(
       string memory uri
    ) ERC1155("ipfs://QmP5UWFnW2sJsSL37djNuGWjVb5b7jih6yWc3HsqF41P8g/GOLD_Metadata.json") public {
        
        //minting the ERC1155 tokens.     
        _mint(msg.sender, GOLD,75 , "");   
    
        _mint(msg.sender, SILVER, 75, "");  

      
    }
    
    function return_uri() public view returns (string memory) {
    
    return "ipfs://QmP5UWFnW2sJsSL37djNuGWjVb5b7jih6yWc3HsqF41P8g/GOLD_Metadata.json";
    
        
    }

}
