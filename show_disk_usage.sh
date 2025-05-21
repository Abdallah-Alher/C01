#!/bin/bash
# Ce script affiche l'utilisation du disque
# - Si aucun argument : affiche l’utilisation globale
# - Si un argument (répertoire) : affiche la taille du répertoire

if [ $# -eq 0 ]; then
    echo "Utilisation globale du disque :"
    df -h
else
    if [ -d "$1" ]; then
        echo "Taille du répertoire '$1' :"
        du -sh "$1"
    else
        echo "Erreur : Le dossier '$1' n'existe pas."
        exit 1
    fi
fi