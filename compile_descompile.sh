#! /bin/bash

read -p "Qual a operacao desejada? 'compactar' ou 'descompactar'" opcao
case "$opcao" in
        "compactar")
                read -p "Nome do arquivo final (.tar.gz)" arquivo_saida
                read -p "Lista de arquivos separados por espaço:" arquivos
                tar -czf "$arquivo_saida" "$arquivos"
                echo "Compactado com sucesso em $arquivo_saida"
        ;;
        "descompactar")
                read -p "Nome do arquivo a descompactar (.tar.gz)" arquivo
                read -p "Diretorio de destino" diretorio
                tar -xzf "$arquivo" -C "$diretorio"
                echo "Descompactado com sucesso em $diretorio"
        ;;
        *)
        echo "Operacao invalida!"
        echo "Opcoes validas: 'compactar', 'descompactar'"
        exit 1
        ;;
esac
