#!/bin/bash
:set X
### VARIABLES
statut="git status"

#################################################
diese="#########################################"
echo $diese
echo "STATUS"
$statut

#################################################
echo $diese
echo "AJOUT DES FICHIERS"
add_file="git add --all"
$add_file
$statut
#################################################
echo $diese
echo "COMMIT  DES FICHIERS"
commit_texte="Entrez les fichiers \à commiter"
read -p $commit_texte
git commit -m $commit_texte
#$commit_file
$statut
echo $diese
#################################################
echo "PUSH SUR LE REPOS"
git push
$statut
