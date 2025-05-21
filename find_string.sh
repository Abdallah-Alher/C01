#!/bin/bash
# Ce script recherche une chaîne dans un fichier
# Pour rendre ce script exécutable, utilisez la commande : chmod +x find_string.sh
# Pour exécuter ce script, utilisez la commande : ./find_string.sh
# Lire le nom du fichier
read f
# Lire le caractère 
read c
# La recherche du caractère dans le fichier
if grep -i "$c" "$f"; then
echo "La chaîne '$c' a été trouvée dans $f."
else
echo "La chaîne '$c' n'a pas été trouvée dans $f."
fi