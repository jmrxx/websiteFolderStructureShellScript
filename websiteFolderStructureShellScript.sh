#!bin/bash
# Script for the Website Folder Structure basic
# Author: jose mejia | jmrx
# version: 1.0
# date : 2022-08-25

# zone for the functions
function  proyectCreate(){
	read -p  "Name of the proyect to create: " nameProyect
	mkdir $nameProyect
	cd $nameProyect
	mkdir {js,css,assets}
	cd assets
	mkdir img
	cd ..
	touch index.html
}

function proyectDelete(){
	read -p  "Name of the project to delete : " nameProyect
	rm  -rf $nameProyect
}
# main program
echo  "Website Folder Structure"
echo  "-----------------------------------------------"
echo  " 1. Create website folder structure"
echo  " 2. Delete website folder structure"
echo  " 3. Exit"
echo  "----------------------------------------"
read -p " Option : " option
case  $option in
	1) 
		proyectCreate
		echo "proyect create"
	;;
	2)
		proyectDelete
		echo "proyect delete"
	;;
	3)  
		exit
	;;
	*)
	 echo "Option invalid"
	;;
esac
exit 0
