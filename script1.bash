#!/bin/bash

root_dir="${1:-.}"

dossiers=(
    "$root_dir/personnages/mascottes"
    "$root_dir/personnages/super heros/femmes/cape"
    "$root_dir/personnages/super heros/femmes/sans cape"
    "$root_dir/personnages/super heros/hommes/cape"
    "$root_dir/personnages/super heros/hommes/sans cape"
    "$root_dir/personnages/super heros/femmes/cape/batgirl"
    "$root_dir/personnages/super heros/femmes/cape/wonderwoman"
    "$root_dir/personnages/super heros/femmes/sans cape/electra"
    "$root_dir/personnages/super heros/femmes/sans cape/superwoman"
)

fichiers=(
    "$root_dir/personnages/mascottes/beastie"
    "$root_dir/personnages/mascottes/bibendum"
    "$root_dir/personnages/mascottes/mario"
    "$root_dir/personnages/mascottes/sonic"
    "$root_dir/personnages/super heros/hommes/cape/batman"
    "$root_dir/personnages/super heros/hommes/cape/superman"
    "$root_dir/personnages/super heros/hommes/cape/thor"
    "$root_dir/personnages/super heros/hommes/sans cape/antman"
    "$root_dir/personnages/super heros/hommes/sans cape/daredevil"
    "$root_dir/personnages/super heros/hommes/sans cape/linuxman"
    "$root_dir/personnages/super heros/hommes/sans cape/spiderman"
)

# Creating directories
for dossier in "${dossiers[@]}"; do
    mkdir -p -m 775 "$dossier"
done

# Creating files
for fichier in "${fichiers[@]}"; do
    if [[ -n "$fichier" ]]; then
        echo "Creating file: $fichier"
        touch "$fichier"
        chmod 664 "$fichier"
    fi
done

# Print the tree
#ls -lR --color=auto "./personnages"