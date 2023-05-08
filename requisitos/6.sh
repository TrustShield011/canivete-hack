#!/bin/bash
api=`cat requisitos/configuracion/.api_phone.txt`
user=`cat requisitos/configuracion/.user_not_root.txt`

source requisitos/0.sh

Title
echo "[6] Informações de um número de telefone"
echo
echo "============================================================="
echo "[1] Consulte a empresa e o país do número de telefone""        |"
echo "-------------------------------------------------------------"
echo "[2] Veja se você está cadastrado no Instagram, Amazon ou Snaptchat"" |"
echo "-------------------------------------------------------------"
echo "[3] Use o Google Dorks (veja onde o telefone foi publicado)""|"
echo "-------------------------------------------------------------"
echo "[4] Tente extrair o nome verdadeiro do dono do telefone""  |"
echo "-------------------------------------------------------------"
echo "[5] Todos (empresa, redes, Google Dorks, nome do proprietário)""  |"
echo "-------------------------------------------------------------"
echo "[6] Votar ao Menu""                                          |"
echo "============================================================="
echo
read -p "Elige una opcion: " opc1
	case $opc1 in
			1 )	echo
				read -p "[*] Escreva o código do país do telefone do alvo (Ex: 34): " codigo
				read -p "[*]Escreva o número de telefone do alvo (Ex: 62529541): " telefono
				echo
				echo "#############################"
				echo "[☢] Telefono: +$codigo $telefono"
				echo "#############################"
				echo
				curl -s "https://api.veriphone.io/v2/verify?phone=%2B$codigo-$telefono&key=$api" > requisitos/resultados/$telefono.txt
				echo "[*] Valido: " `cat requisitos/resultados/$telefono.txt | awk -F',' '{print $3}' | cut -c 16-`
				echo "[*] Pais: " `cat requisitos/resultados/$telefono.txt | awk -F',' '{print $6}' | cut -c 13- | rev | cut -c2- | rev`
				echo "[*] Compañia: " `cat requisitos/resultados/$telefono.txt | awk -F',' '{print $12}' | cut -c 13- | rev | cut -c3- | rev`
				;;
			2 )	echo
				read -p "[*] Escreva o código do país do telefone do alvo (Ex: 34): " codigo
				read -p "[*]Escreva o número de telefone do alvo (Ex: 62529541): " telefono
				echo
				echo "#############################"
				echo "[☢] Telefono: +$codigo $telefono"
				echo "#############################"
				echo
				sudo ignorant --only-used --no-clear $codigo $telefono
				;;
			3 )	echo
				read -p "[*] Escreva o código do país do telefone do alvo (Ex: 34): " codigo
				read -p "[*]Escreva o número de telefone do alvo (Ex: 62529541): " telefono
				read -p "[*]Palavra-chave /Opcional/(Ex: Nombre, Email, Localizacion, etc): " info
				echo
				echo "#############################"
				echo "[☢] Telefono: +$codigo $telefono"
				echo "#############################"
				echo
				echo "Abriendo Navegador...."
				sleep 2
				su $user -c "firefox 'https://www.google.com/search?q=%22+$codigo$telefono%22'" | su $user -c "firefox 'https://www.google.com/search?q=%22+$codigo$telefono%22+$info'"
				;;
			4 )	echo
				echo "A continuacion escribe en la Web el Numero de Telefono, eliga el pais y rellene las captchat que salgan al darle a (Name Lookup)"
				echo
				echo "Abriendo Navegador...."
				sleep 3
				su $user -c "firefox 'https://www.revealname.com'"
				;;
			5 )	echo
				read -p "[*] Escreva o código do país do telefone do alvo (Ex: 34): " codigo
				read -p "[*]Escreva o número de telefone do alvo (Ex: 62529541): " telefono
				read -p "[*]Palavra-chave /Opcional/(Ex: Nombre, Email, Localizacion, etc): " info
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Ver la Compañia y el Pais del Numero de Telefono (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "#############################"
				echo "[☢] Telefono: +$codigo $telefono"
				echo "#############################"
				echo
				curl -s "https://api.veriphone.io/v2/verify?phone=%2B$codigo-$telefono&key=$api" > requisitos/resultados/$telefono.txt
				echo "[*] Valido: " `cat requisitos/resultados/$telefono.txt | awk -F',' '{print $3}' | cut -c 16-`
				echo "[*] Pais: " `cat requisitos/resultados/$telefono.txt | awk -F',' '{print $6}' | cut -c 12-`
				echo "[*] Compañia: " `cat requisitos/resultados/$telefono.txt | awk -F',' '{print $12}' | cut -c 12-`
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Ver si esta registrado en Instagram, Amazon o Snaptchat (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "#############################"
				echo "[☢] Telefono: +$codigo $telefono"
				echo "#############################"
				echo
				sudo ignorant --only-used --no-clear $codigo $telefono
				echo
				sleep 3
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Usar Google Dorks (Ver donde se a publicado el Telefono) (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "#############################"
				echo "[☢] Telefono: +$codigo $telefono"
				echo "#############################"
				echo
				echo "Abriendo Navegador (Cuando se finalicen los procesos)...."
				#su $user -c "firefox 'https://www.google.com/search?q=%22+$codigo$telefono%22'"
				#su $user -c "firefox 'https://www.google.com/search?q=%22+$codigo$telefono%22+$info'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Intentar extraer el nombre real del dueño del Telefono (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "#############################"
				echo "[☢] Telefono: +$codigo $telefono"
				echo "#############################"
				echo
				echo "Em seguida, escreva o número de telefone na Web, escolha o país e preencha o captchat que aparece clicando em (Pesquisa de nome)"
				echo
				echo "Abriendo Navegador y Todas las Pestañas...."
				sleep 2
				su $user -c "firefox 'https://www.google.com/search?q=%22+$codigo$telefono%22'" | su $user -c "firefox 'https://www.google.com/search?q=%22+$codigo$telefono%22+$info'" | su $user -c "firefox 'https://www.revealname.com'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				;;
			6 )	bash the_spy_job.sh
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
				sleep 1
				bash requisitos/6.sh
	esac
echo
echo
echo "#####################"
echo "[1] Volver al Menu"
echo "[2] Volver a ejecutar"
echo "[3] Salir"
echo "#####################"
echo
read -p "Elige una opcion: " opc2
	case $opc2 in
			1 )	bash the_spy_job.sh
				;;
			2 )	bash requisitos/6.sh
				;;
			3 )	exit
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac
