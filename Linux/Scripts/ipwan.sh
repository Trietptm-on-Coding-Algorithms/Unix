#!/bin/sh

###########################################################################
#								          #
#	      Description: Affiche l'adresse ip Wan			  #
#		Créé le: 15/07/2007 par Futex		                  #
#		Dernière mise à jour le: xx/xx/xx par xx	          #
#								          #
###########################################################################

HOST="http://checkip.dyndns.org/"

wget --no-proxy $HOST -O - -o /dev/null | cut -d: -f 2 | cut -d\< -f 1 | sed -e "s/ //g"
