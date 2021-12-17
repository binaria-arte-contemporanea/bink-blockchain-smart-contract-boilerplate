#!/bin/bash
echo "======================================================"
echo ""
echo "BINK - https://bink.binaria.art.br"
echo ""
echo "======================================================"
echo "Instalando dependencias via NPM"
echo "======================================================"
npm install

echo "======================================================"
echo "Renomendo ambiênte de desenvolvimento"
echo "======================================================"
mv sample-dev.env dev.env & cp dev.env sample-dev.env

echo "======================================================"
echo "Executando Ganache Blockchain Local"
echo "======================================================"
nohup npm run ganache &> ./log/ganache.log &

echo "======================================================"
echo "Compilando contrato: contracts/Bink.sol"
echo "======================================================"
npm run compile

echo "======================================================"
echo "Adicionando contrato na Ganache Blockchain Local"
echo "======================================================"
npm run deploy-local

echo "======================================================"
echo "Ganache Blockchain Local"
echo "Informações completas sobre carteiras: log/ganache.log"
echo "======================================================"
tail -f ./log/ganache.log