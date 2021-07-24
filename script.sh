#!/bin/bash
## Script para Download de videos stream ###
echo "Informe o destino | pasta ?"
echo "1 Raciocinio Lógico"
echo "2 Informática"
echo "3 Língua Portuguesa"
##### solicita a pasta de destino -> destino do arquivo que sera baixado
read -p "QUAL OPÇÃO: " op  
echo "$op"

### REALIZA A COMPARAÇÃO IR ATÉ O DESTINO CORRETO
if [ $op -eq 1 ]
then
	
	echo "Encontro 1,2,3,4,5 ?"
	read -p "QUAL ENCONTRO: " en 
	
	
	if [ ! -d "/home/manjaro/Documentos/PCPR/Raciocinio Lógico/Encontro$en" ];
	then 
		mkdir "/home/manjaro/Documentos/PCPR/Raciocinio Lógico/Encontro$en"
		cd 	"/home/manjaro/Documentos/PCPR/Raciocinio Lógico/Encontro$en"
		destino="/home/manjaro/Documentos/PCPR/Raciocinio Lógico/Encontro$en"
	else
		cd "/home/manjaro/Documentos/PCPR/Raciocinio Lógico/Encontro$en"
		destino="/home/manjaro/Documentos/PCPR/Raciocinio Lógico/Encontro$en"
	fi
	
elif [ $op -eq 2 ]
	then
	
	cd "/home/manjaro/Documentos/PCPR/Informática"
elif [ $op -eq 3 ]
	then
	
		echo "Encontro 1,2,3,4,5 ?"
		read -p "QUAL ENCONTRO: " en 
		
	
		if [ ! -d "/home/manjaro/Documentos/PCPR/Língua Portuguesa/Encontro$en" ];
		then 
			mkdir "/home/manjaro/Documentos/PCPR/Língua Portuguesa/Encontro$en"
			cd 	"/home/manjaro/Documentos/PCPR/Língua Portuguesa/Encontro$en"
			destino="/Encontro$en"
		else
			cd "/home/manjaro/Documentos/PCPR/Língua Portuguesa/Encontro$en"
			destino="/home/manjaro/Documentos/PCPR/Língua Portuguesa/Encontro$en"
		fi
	
	
	else
	echo "Opção inválida! "
fi

ls

read -p "Mover pdfs ? y/n: " copia;

if [ $copia = "y" ]
	then
	echo "ok"
	cd ~/Downloads
	mv *.pdf "$destino"
	fi

## SOLICITA O LINK STREAM AO USER
read -p "LINK:" link
## NOME QUE O ARQUIVO TERÁ
read -p "NOME:" nome
#read -p "LINK PDF: " pdf

echo "$link"
echo "$nome"
proxychains youtube-dl "$link" -o "$nome"
#proxychains wget -O "$nome.pdf" "$pdf" # Não funcionou 