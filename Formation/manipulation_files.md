# copier le fichier /etc/passwd dans le repertoire personnel sous le nom de mypasswd
cp /etc/passwd mypasswd
 

# visualisation du fichier 
 cat mypasswd
 tac mypasswd

# afficher le 15 premières lignes 
head -15 mypasswd
# afficher le 15 derières lignes 
tail -15 mypasswd

# compter le nombre d'utilisateur
who | wc -l

# affichage avec nl
n1 mypasswd
cat -n mypasswd

# redirection

cut -d : -f 7 mypasswd > shells

cut -c  1-10 mypasswd > mypasswd1

cut -c 11 -mypasswd > mypasswd2 .

# fusionner le contenu des fichiers

paste mypasswd1 mypasswd2 > file

#  tri
sort shells  > sorted.shells

# le nombre d'occurence de chaques valeurs

uniq -c sorted.shells > uniq.sorted.shells

# liste triée par ordre décroissant des shellls en cours d'utilisation , 
sort -nr uniq.sorted.shells

sort -r uniq.sorted.shells

# copy files
cp /usr/share/dict/words mywords

grep fish mywords
grep -i fish mywords
grep -2  fish
grep -C 2 fish
grep -A 2 -B 2 fish



