#!/bin/bash

#          A___A
#    ____ / o o \
#  /~____   ='= /
# (______)__m_m_)

# aachat.sh
# Affiche un super chat en ASCII ART :D
#
# version améliorée du 15/08/2026:
# Un argument obligatoire pour le décalage à gauche
# ---
# Utilisation :
# bash ./aachat.sh <gauche>
#
# Exemple :
# bash ./aachat.sh 10
# ---
# Sylvain Soulier, https://github.com/niavlys34

# Vérification de la présence d'un seul argument
if [[ $# -ne 1 ]]; then
    echo "Un seul (1) argument exactement doit être passé !" >&2
    exit 1
fi

# Vérification que l'argument est un entier positif (ou 0)
if ! [[ $1 =~ ^[0-9]+$ ]]; then
    echo "L'argument doit être un entier positif !" >&2
    exit 1
fi

# Définition du nombre de colonnes
COLS=`tput cols`

# Lecture de l'argument (marge à gauche souhaitée)
# et définition de la longueur totale (chat = 15 caractères)
GAUCHE=$1
LONGUEUR_TOTALE=$((GAUCHE + 15))

# Vérification que la longueur totale
# ne soit pas supérieure au nombre de colonnes
if [[ $LONGUEUR_TOTALE -gt $COLS ]]; then
    echo "Marge à gauche trop importante !" >&2
    exit 1
fi

# --- Affichage du chat ---
#

printf "%*s%s\n" "$((GAUCHE + 9))" "" "A___A"
printf "%*s%s\n" "$((GAUCHE + 3))" "" "____ / o o \\"
printf "%*s%s\n" "$((GAUCHE + 1))" "" "/~____   ='= /"
printf "%*s%s\n" "$GAUCHE" "" "(      )  m m )"

#
# --- Fin de l'affichage ---