#!/bin/bash

# supermsg.sh
# Affiche un super message centré avec une couleur de fond dans le terminal
# ---
# Utilisation :
# bash ./supermsg.sh <couleur_de_fond> <message>
# Les deux arguments sont obligatoires, dans l'ordre
# <couleur_de_fond>
# 	-b : Fond bleu
# 	-o : Fond or (jaune)
# 	-r : Fond rouge
# 	-v : Fond vert
# 	-w : Fond blanc
# <message> : Un ou plusieurs caractères !
#
# Exemple :
# bash ./supermsg.sh -b "Je suis un message centré sur fond bleu !"
# ---
# Sylvain Soulier, https://github.com/niavlys34

# Définition des couleurs
COULEURB="\033[44m\033[1;37m" # Fond bleu et texte blanc gras
COULEURO="\033[43m\033[1;37m" # Fond jaune et texte blanc gras
COULEURR="\033[41m\033[1;37m" # Fond rouge et texte blanc gras
COULEURV="\033[42m\033[1;37m" # Fond vert et texte blanc gras
COULEURW="\033[47m\033[1;30m" # Fond blanc et texte noir gras
COULEURU="\033[45m\033[1;37m" # Fond violet et texte blanc gras

RAZ="\033[0;m"

# Vérification de la présence de deux arguments
if [[ $# -ne 2 ]]; then
    echo "Deux (2) arguments exactement doivent être passés !" >&2
    exit
fi

# Test du premier argument, définition de la couleur
if [[ "$1" = "-b" ]]; then
    COULEUR=$COULEURB
elif [[ "$1" = "-o" ]]; then
    COULEUR=$COULEURO
elif [[ "$1" = "-r" ]]; then
    COULEUR=$COULEURR
elif [[ "$1" = "-v" ]]; then
    COULEUR=$COULEURV
elif [[ "$1" = "-w" ]]; then
    COULEUR=$COULEURW
elif [[ "$1" = "-u" ]]; then
    COULEUR=$COULEURU
else
    echo "Premier argument invalide !" >&2
    exit
fi

# Définition du nombre de colonnes
COLS=`tput cols`

# Lecture de l'argument (texte du message)
# et définition de la longueur du message
MESSAGE=$2
LONGUEUR_MESSAGE=${#2}

# Vérification que la longueur du message
# ne soit pas supérieure au nombre de colonnes
if [[ $LONGUEUR_MESSAGE -gt $COLS ]]; then
    echo "Message trop long !" >&2
    exit
fi

# Calcul du nombre d'espaces de part et d'autre
ESPACES=$((COLS - LONGUEUR_MESSAGE))
ESPACES_GAUCHE=$((ESPACES / 2))
RESTE=$((ESPACES % 2))
ESPACES_DROITE=$((ESPACES_GAUCHE + RESTE))

# --- Affichage du message ---
#
# Couleurs
echo -e -n "${COULEUR}"
# Affichage des espaces à gauche
for (( i=0; i<$ESPACES_GAUCHE; i++ )); do
    echo -n " "
done
# Affichage du message
echo -n "${MESSAGE}"
# Affichage des espaces à droite
for (( i=0; i<$ESPACES_DROITE; i++ )); do
    echo -n " "
done
# Remise à zéro des couleurs
echo -e -n "${RAZ}"
#
# --- Fin de l'affichage ---