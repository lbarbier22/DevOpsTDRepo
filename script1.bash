#!/bin/bash

dossiers=(
    "./personnages/mascottes"
    "./personnages/super heros/femmes/cape"
    "./personnages/super heros/femmes/sans cape"
    "./personnages/super heros/hommes/cape"
    "./personnages/super heros/hommes/sans cape"
    "./personnages/super heros/femmes/cape/batgirl"
    "./personnages/super heros/femmes/cape/wonderwoman"
    "./personnages/super heros/femmes/sans cape/electra"
    "./personnages/super heros/femmes/sans cape/superwoman"
)

fichiers=(
    "./personnages/mascottes/beastie"
    "./personnages/mascottes/bibendum"
    "./personnages/mascottes/mario"
    "./personnages/mascottes/sonic"
    "./personnages/super heros/hommes/cape/batman"
    "./personnages/super heros/hommes/cape/superman"
    "./personnages/super heros/hommes/cape/thor"
    "./personnages/super heros/hommes/sans cape/antman"
    "./personnages/super heros/hommes/sans cape/daredevil"
    "./personnages/super heros/hommes/sans cape/linuxman"
    "./personnages/super heros/hommes/sans cape/spiderman"
)

# Creating directories
for dossier in "${dossiers[@]}"; do
    mkdir -p "$dossier"
done

# Creating files
for fichier in "${fichiers[@]}"; do
    if [[ -n "$fichier" ]]; then
        echo "Creating file: $fichier"
        touch "$fichier"
    fi
done

# Print the tree
ls -lR --color=auto "./personnages"