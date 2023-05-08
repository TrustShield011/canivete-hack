#!/bin/bash
user=`cat requisitos/configuracion/.user_not_root.txt`

source requisitos/0.sh

Title
echo "[2] Informações de uma pessoa"
echo
echo "======================================================"
echo "[1] Usar Google Dorks""                                |"
echo "------------------------------------------------------"
echo "[2] Usar Buscador especifico""                         |"
echo "------------------------------------------------------"
echo "[3] Tudo (Redes Sociais, Webs, Imagens, Posts, etc)""  |"
echo "------------------------------------------------------"
echo "[4] Voltar ao Menu""                                   |"
echo "======================================================"
echo
read -p "Elige una opcion: " opc1
	case $opc1 in
			1 )	echo
				read -p "[*] Escreva o Nome do Objetivo (Ej: Guillermo): " nome
				read -p "[*] Escreva o 1º Sobrenome do Alvo (Ej: Vicente): " apellido1
				read -p "[*] Escreva o 2º Sobrenome do Alvo (Ej: Ibanez): " apellido2
				read -p "[*] Palavra-chave /Opcional/ (Ex: Telefone, E-mail, Localização, etc): " info
				echo
				echo "###########################################"
				echo "[☢] Nombre: $nome $apellido1 $apellido2"
				echo "###########################################"
				echo
				echo "Abrindo Navegador...."
				sleep 2
				su $user -c "firefox 'https://www.google.com/search?q=%22$nome+$apellido1+$apellido2%22'" | su $user -c "firefox 'https://www.google.com/search?q=%22$nombre+$apellido1+$apellido2%22+$info'" 
				;;
			2 )	echo
				read -p "[*] Escreva o Nome do Objetivo (Ej: Guillermo): " nome
				read -p "[*] Escreva o 1º Sobrenome do Alvo (Ej: Vicente): " apellido1
				read -p "[*] Escreva o 2º Sobrenome do Alvo (Ej: Ibanez): " apellido2
				echo
				echo "###########################################"
				echo "[☢] Nombre: $nome $apellido1 $apellido2"
				echo "###########################################"
				echo
				echo "Abriendo Navegador...."
				sleep 2
				su $user -c "firefox 'https://www.idcrawl.com/$nombre-$apellido1-$apellido2'"
				;;
			3 )	echo
				read -p "[*] Escreva o Nome do Objetivo (Ej: Guillermo): " nome
				read -p "[*] Escreva o 1º Sobrenome do Alvo (Ej: Vicente): " apelido1
				read -p "[*] Escreva o 2º Sobrenome do Alvo (Ej: Ibanez): " apelido2
				read -p "[*] Palavra-chave /Opcional/ (Ex: Telefone, E-mail, Localização, etc): " info
				echo
				echo "###########################################"
				echo "[☢] Nombre: $nome $apellido1 $apellido2"
				echo "###########################################"
				echo
				echo
				echo "==========================="
				echo " Recolectando Informacion"
				echo "  y abriendo navegadores"
				echo "==========================="
				echo "------->""                  |"
				sleep 1
				echo "------------>""             |"
				sleep 1
				echo "------------------->""      |"
				sleep 1
				echo "------------------------->""|"
				echo "==========================="
				echo
				echo "Abriendo Navegador...."
				sleep 2
				su $user -c "firefox 'https://www.google.com/search?q=%22$nome+$apellido1+$apellido2%22'" | su $user -c "firefox 'https://www.google.com/search?q=%22$nombre+$apellido1+$apellido2%22+$info'" | su $user -c "firefox 'https://www.idcrawl.com/$nombre-$apellido1-$apellido2'"
				;;
			4 )	bash the_spy_job.sh
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
				sleep 1
				bash requisitos/2.sh
	esac
echo
echo
echo "#####################"
echo "[1] Voltar ao Menu"
echo "[2] Voltar a executar"
echo "[3] Salir"
echo "#####################"
echo
read -p "Elige una opcion: " opc2
	case $opc2 in
			1 )	bash the_spy_job.sh
				;;
			2 )	bash requisitos/2.sh
				;;
			3 )	exit
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac
