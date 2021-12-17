// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../node_modules/@openzeppelin/contracts/access/Ownable.sol";
import "../node_modules/@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "../node_modules/@openzeppelin/contracts/utils/Counters.sol";

// O contrato para criação de um NFT é "Ownable" e utiliza o protocolo ERC721 com Gestão de URL
contract Nft is Ownable, ERC721URIStorage {

    // Inicia o contador de "edições
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    // Através do protocolo ERC721 é possivel definir valores semelhantes à criação de Tokens
    // ERC721("Nome por extenso", "Abreviação")
    constructor() ERC721("Bink Example NFT", "BNFT") {}

    // Seu item NFT precisa de:
    // * userwallet: 1 endereço 
    // * tokenURI: O link de algum arquivo 
    function nftItem(address userwallet, string memory tokenURI) public returns (uint256) {

        // Utiliza o contador para realizar incrementos
        _tokenIds.increment();

        // Através do incremento, cria uma nova URL para o token
        uint256 newNftId = _tokenIds.current();

        // Adiciona o token (NFT) para o usuário da carteira 
        _mint(userwallet, newNftId);
        _setTokenURI(newNftId, tokenURI);

        return newNftId;
    }
}