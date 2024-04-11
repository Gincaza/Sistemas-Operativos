#!/bin/bash

# Nome do script: lsdirs

while true; do
    echo "1) Lista apenas os arquivos executáveis"
    echo "2) Mostra o nome e a data de criação do arquivo mais antigo"
    echo "3) Lista os arquivos de um grupo indicado na linha de comandos"
    echo "4) Lista apenas os diretórios"
    echo "5) Sair"
    echo -n "Escolha uma opção: "
    read opcao

    case $opcao in
        1)
            echo "Arquivos executáveis:"
            find . -type f -executable
            ;;
        2)
            echo "Arquivo mais antigo:"
            ls -ltr | tail -n 1
            ;;
        3)
            echo -n "Digite o nome do grupo: "
            read grupo
            find . -group $grupo
            ;;
        4)
            echo "Diretórios:"
            ls -d */
            ;;
        5)
            echo "Saindo..."
            exit 0
            ;;
        *)
            echo "Opção inválida!"
            ;;
    esac
done
