#!/bin/sh

###########################################################################
#								          #
#	      Description: Affiche l'adresse ip Wan			  #
#		Créé le: 15/07/2007 par Futex		                  #
#		Dernière mise à jour le: xx/xx/xx par xx	          #
#								          #
###########################################################################

HOST="https://wtfismyip.com/text"
IP=$(wget --no-proxy $HOST -O - -o /dev/null)

COUNTRY=$(geoiplookup ${IP} | awk -F : '{print $2}')

printf "${IP} ${COUNTRY}\n"
