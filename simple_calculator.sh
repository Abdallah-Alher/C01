#!/bin/bash
# Ce script prend deux nombres et un opérateur (+, -, *, /) saisis sur une seule ligne, puis affiche le résultat.
# Pour rendre ce script exécutable, utilisez la commande : chmod +x simple_calculator.sh
# Pour exécuter ce script, utilisez la commande : ./simple_calculator.sh

# Lire les 3 éléments sur une seule ligne
read -p "Entrez deux nombres et un opérateur (+ - * /) : " a b op

# Vérifie que les deux premiers éléments sont des nombres entiers
if ! [[ "$a" =~ ^-?[0-9]+$ && "$b" =~ ^-?[0-9]+$ ]]; then
    echo "Erreur : les deux premières valeurs doivent être des entiers."
    exit 1
fi

# Vérifie l’opérateur et effectue l’opération
if [ "$op" = "+" ]; then
    resultat=$((a + b))
elif [ "$op" = "-" ]; then
    resultat=$((a - b))
elif [ "$op" = "*" ]; then
    resultat=$((a * b))
elif [ "$op" = "/" ]; then
    if [ "$b" -eq 0 ]; then
        echo "Erreur : division par zéro."
        exit 1
    fi
    resultat=$((a / b))
else
    echo "Erreur : opérateur invalide. Utilisez + - * /"
    exit 1
fi

# Affiche le résultat
echo "Résultat : $resultat"
