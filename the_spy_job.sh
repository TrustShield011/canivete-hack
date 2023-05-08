#!/bin/bash

source requisitos/0.sh

Title
echo "                                [0] ==>Instalar e Configurar Requisitos<== 🔍"
echo "                                [1] Informacion de una Pagina Web/Empresa  🔍"
echo "                                [2] Informações de uma pessoa              🔍"
echo "                                [3] Apelido/Alias/Informações de apelido   🔍"
echo "                                [4] Informações de uma rede social         🔍"
echo "                                [5] Informações de um e-mail               🔍"
echo "                                [6] Informações de um número de telefone   🔍"
echo "                                [7] Informações de IP público              🔍"
echo "                                [8] Informações do canal de vídeo/YouTube  🔍"
echo "                                [9] Informações da imagem                  🔍"
echo "                                [99] -------------> sair"" <--------------- 🔍"
echo
read -p "[*] Elige una opcion: " opc1
	case $opc1 in
			0 )	bash requisitos/0.sh
				;;
			1 )	bash requisitos/1.sh
				;;
			2 )	bash requisitos/2.sh
				;;
			3 )	bash requisitos/3.sh
				;;
			4 )	bash requisitos/4.sh
				;;
			5 )	bash requisitos/5.sh
				;;    
			6 )	bash requisitos/6.sh
				;;
			7 )	bash requisitos/7.sh
				;;
			8 )	bash requisitos/8.sh
				;;
			9 )	bash requisitos/9.sh
				;;
			99 )	exit
				;;
			* )	echo
				echo "$RRPLY Não é uma opção válida"
				bash the_spy_job.sh
	esac
