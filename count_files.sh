#!/bin/bash
# Ce script compte le nombre de fichiers dans un dossier donné par l'utilisateur
# Pour rendre ce script exécutable, utilisez la commande : chmod +x count_files.sh
# Pour exécuter ce script, utilisez la commande : ./count_files.sh
read myfolder
count=0
for file in $(ls "$myfolder"); do
    if [ -f "$myfolder/$file" ]; then
        count=$((count + 1))
    fi
done
echo "Le dossier $myfolder contient $count fichier(s)."