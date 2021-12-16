# BINK
Bink é um projeto desenvolvido pela Galeria Binaria Arte Contemporânea.

### Desenvolvimento:
Instalação das dependências
VSCode
- Solidity

NPM
- @openzeppelin/contracts: 4.4.1
- ganache-cli: ^6.12.2
- truffle: ^5.4.24,

```
npm install
```

Comandos
```
$ npm run console // Abre console do Truffle
$ npm run compile // Compila os contratos
$ npm run ganache // Inicia blockchain de desenvolvimento
$ npm run migrate // Deploy dos contratos

```

### Wallets de Desenvolvimento
Mnemonic: 'capital render evoke link link candy viable moon fringe sunny early shiver'

```
# package.json => "ganache": "./node_modules/.bin/ganache-cli
$ ganache-cli -d -m 'capital render evoke link link candy viable moon fringe sunny early shiver'
```

### Setup Metamask (Local)
Ganache-CLI 
- Network Name: Ganache CLI
- RPC: 127.0.0.1:8545
- Chain ID: 1337
- Currency Symbol: ETH

Importe as chaves privadas do console($ npm run ganache) para o Metamask
