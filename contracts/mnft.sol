// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract mnft is ERC721, ERC721URIStorage, Ownable {
    uint public _tokenIds;
    using Strings for uint256;

    constructor() ERC721("Harish_Token", "HR") Ownable(msg.sender) {
        _tokenIds = 0;
    }

    function _baseURI() internal pure override returns (string memory) {
        return
            "https://salmon-legislative-lynx-655.mypinata.cloud/ipfs/Qmc8r7kuitKS5yCVqKMJzbCvu15xZyVQ8171sDhiei1ycs/";
    }

    function mintNFT(address recipient) public {
        _tokenIds += 1;

        uint256 newItemId = _tokenIds;
        _mint(recipient, newItemId);
       
    }

    function tokenURI(
        uint256 tokenId
    ) public pure override(ERC721, ERC721URIStorage) returns (string memory) {
        string memory base = _baseURI();
        return string.concat(base,tokenId.toString(), ".json");
    }

    function supportsInterface(
        bytes4 interfaceId
    ) public view override(ERC721, ERC721URIStorage) returns (bool) {
        return super.supportsInterface(interfaceId);
    }
}
