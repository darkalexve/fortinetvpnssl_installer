#!/bin/bash
#
# Script de Instalacion de Forticlient VPN Only SSL para Debian y derivados
# Developed by Jonathan Melendez | jmelendez@thedarktiger.ml
# 
# Updated:

PATH=$PATH:/bin:/sbin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin

echo "Determinando Arquitectura"
architecture=$(uname -m)
echo "Tu Arquitectura es: $architecture"
sleep 5
echo "Adecuando la instalacion a tu arquitectura"

case $architecture  in
	x86_64)
		echo ""
		echo "Me Estoy Instalando en: $architecture"
		sleep 10
		echo "Actualizando Cabeceras de Ubuntu" 
		apt-get update 
		sleep 3
		echo "Instalando Paqueterias requeridas"
		apt-get install -y libgtk2.0-0:i386 libsm6:i386 libstdc++6:i386 xterm
		echo ""
		echo "Desplegando recursos" 
		tar zxf forticlientsslvpn_linux_4-0-2281-tar.gz
		cp -r forticlientsslvpn /opt/
		cp forticlientsslvpn.gif /opt/forticlientsslvpn/
		cp Forticlient.desktop /usr/share/applications/
		echo "Instalacion finalizada, busca el icono en tu escritorio y ejecutalo"
		sleep 3
	;;
	*)
		echo ""
		echo "Actualizando Cabeceras de Ubuntu" 
		apt-get update 
		sleep 3
		echo "Instalando Paqueterias requeridas"
		apt-get install -y libgtk2.0-0 libsm6 libstdc++6 xterm
		echo ""
		echo "Desplegando recursos" 
		tar zxf forticlientsslvpn_linux_4-0-2281-tar.gz
		cp -r forticlientsslvpn /opt/
		cp forticlientsslvpn.gif /opt/forticlientsslvpn/
		ccpForticlient.desktop /usr/share/applications/
		echo "Instalacion finalizada, busca el icono en tu escritorio y ejecutalo"
		sleep 3
esac
