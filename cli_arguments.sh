#!/bin/bash
# Ce un script qui accepte un ou plusieurs arguments et les affiche ligne par ligne.
# Pour rendre ce script exécutable, utilisez la commande : chmod +x cli_arguments.sh
# Pour exécuter ce script, utilisez la commande : ./cli_arguments.sh  

# Demande à l'utilisateur de saisir un ou plusieurs arguments
read -a arguments

# Initialisation du compteur
i=1
# Parcourir le tableau arguments
for arg in "${arguments[@]}"; do
echo "Argument $((i++)): $arg"
done