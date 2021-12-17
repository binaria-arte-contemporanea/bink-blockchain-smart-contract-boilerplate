// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Importa o modelo padrão de Token ERC20 com diversas funções de _mint, leitura, envio, transferencia, etc...
import "../node_modules/@openzeppelin/contracts/token/ERC20/ERC20.sol";

// modelo do contrato Token é ERC20
contract Token is ERC20 {
    
    // ERC20("Nome do Token","Ticker")
    constructor() ERC20("Bink Example Token", "BTKN") {

        // msg.sender = Carteira Eth do criador do contrato

        // 5000000000000000000000000 = 5.000.000 Tokens em formato UINT256 com 18 casas decimais
        // padrão para Cripto e Tokens
        _mint(msg.sender, 5000000000000000000000000);
    }

    // Para alterar os Decimais, descomente a função abaixo:

    // function decimals() public view virtual override returns (uint8) {
    //    return 16;
    // }
}