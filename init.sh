#!/bin/bash

# Exemple : https://git.drees.fr/drees_code_public/ressources/tutos/-/blob/diffusion/contenu/init.sh
# On enregistre tous les logs dans log.out pour pouvoir déboguer
exec 3>&1 4>&2
trap 'exec 2>&4 1>&3' 0 1 2 3
exec 1>log.out 2>&1

# Pareil pour les variables d'environnement
env | sort > env_init.out

# Cloner le dépot
git clone https://github.com/emilienschultz/test.git
cd test
python install -m requirements.txt