pragma solidity >=0.4.22 <0.9.0;


import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC1155/ERC1155.sol";

contract erc1155nft is erc1155 {
    //TWO NFTs with erc1155 standard. 
    uint256 public constant GOLD = 0;
    uint256 public constant SILVER = 1;
    
    
   
    constructor(
       string memory uri
    ) ERC1155("Contract Uri Here") public {
        
        //minting the ERC1155 tokens.     
        _mint(msg.sender, GOLD,75 , "");   
    
        _mint(msg.sender, SILVER, 75, "");  

      
    }
function return_uri() public view returns (string) {
    return "Contract Uri Here";
}
    
}
