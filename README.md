# BINK
Bink é um projeto desenvolvido pela Galeria Binaria Arte Contemporânea.

### Desenvolvimento:
Instalação das dependências

OS:
- Linux
- OSX
- Windows (via: WSL)

VSCode:
- Solidity

NPM:
- @openzeppelin/contracts: 4.4.1
- ganache-cli: ^6.12.2
- truffle: ^5.4.24,

```
npm install
```

Comandos
```
# Para desenvolvimento
$ npm run console // Abre console do Truffle
$ npm run compile // Compila os contratos
$ npm run ganache // Inicia blockchain de desenvolvimento
$ npm run migrate // Deploy dos contratos

# Para produção (padrão: Matic)
$ npm run deploy-testnet // Deploy Testnet
$ npm run deploy-mainnet // Deploy Mainnet

```

### Wallets de Desenvolvimento
Mnemonic: 'capital render evoke link link candy viable moon fringe sunny early shiver'

```
# Script integrado com as variáveis do ambiênte UNIX => scripts/ganache.sh
# package.json => "ganache": "./scripts/ganache.sh"
$ ganache-cli -d -m 'capital render evoke link link candy viable moon fringe sunny early shiver'
```

### Setup Metamask (local)
Ganache-CLI 
- Network Name: Ganache CLI
- RPC: 127.0.0.1:8545
- Chain ID: 1337
- Currency Symbol: ETH

Importe as chaves privadas do console (```$ npm run ganache```) para o Metamask

# Mainnet (live), Testnet (live), Desenvolvimento (local)

### DotEnv
Arquivo: ```truffle.config.js```
```
# /dev.env: Desenvolvimento (local)
# /prod.env: Produção (mainnet, testnet)

require('dotenv').config({path: __dirname + '/dev.env'});
``` 

```
# dev.env | prod.env
DEV_WALLET="capital render evoke link link candy viable moon fringe sunny early shiver" # Mnenonic da carteira de desenvolvimento
API_KEY= # API do provider ex: https://rpc.maticvigil.com/
ID_WALLET=0 # ID da carteira utilizada (caso tenha mais de uma. ex. 1, 2, 3, etc...)
```

### Configurando redes (Testnet, Mainnet)
A rede padrão do projeto é a Polygon(Matic) - Arquivo: ```truffle-config.js```

```
// No provider: Mnenonnic, <RPC https> + API, Referência da carteira no Metamask(0, 1, 2...) caso tenha mais de uma
provider: () => new HDWalletProvider(Wallet, 'https://rpc-mainnet.maticvigil.com/v1/'+ApiKey, WalletID)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^, ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^, ^^^^^^^, ^^^^^^^^
``` 

```
mainnet: {
  provider: () => new HDWalletProvider(Wallet, 'https://rpc-mainnet.maticvigil.com/v1/'+ApiKey,1),
  network_id: 80001,
  confirmations: 2,
  timeoutBlocks: 200,
  skipDryRun: true
},

testnet: {
  provider: () => new HDWalletProvider(Wallet, 'https://rpc-mumbai.maticvigil.com/v1/'+ApiKey,1),
  network_id: 80001,
  confirmations: 2,
  timeoutBlocks: 200,
  skipDryRun: true
}
```