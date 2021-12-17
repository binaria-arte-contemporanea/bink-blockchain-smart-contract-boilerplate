#!/bin/bash
echo "======================="
echo ""
echo "BINK - https://bink.binaria.art.br"
echo "Blockchain Framework"
echo ""
echo "======================="
echo "Instalando dependencias via NPM"
echo "======================="
npm install

echo "======================="
echo "Renomendo ambiente de desenvolvimento"
echo "======================="
mv sample-dev.env dev.env & cp dev.env sample-dev.env

echo "======================="
echo "Executando Ganache Blockchain Local"
echo "======================="
nohup npm run ganache &> ./log/ganache.log &

echo "======================="
echo "Compilando contratos..."
echo "======================="
npm run compile

echo "======================="
echo "Adicionando contrato na Ganache Blockchain Local"
echo "======================="
npm run deploy-local

echo "======================="
echo "Quick Start Finalizado!"
echo "======================="
echo "Ganache Blockchain Local em background"
echo "Utilize o comando: '$ ps -ef | grep ganache' para visualizar o processo"
echo "e o comando '$ kill PID' para encerrar (o PID será retornado no comando ps)"
echo "Informações completas sobre carteiras e execução: log/ganache.log"
echo "Outros logs: log/*"
echo "======================="
