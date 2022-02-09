## Copier le contenu du fichier /etc/passwd dans un fichier MonPass.txt
```
    cp /etc/passwd MonPass.txt

```

## Extraire de ce fichier les colonnes 1,3,4 6 et 7 et mettre le résultat dans un fichier file.txt.
```
   cut -d : -f 1,3,4,6,7 MonPass.txt > file.txt
  
```

## Ecrire les commandes avec grep permettant de retrouver des ligne répondant aux expressions suivantes : 
### a)	chaîne commençant par «a» ou «A».

```
    grep ^a MonPass.txt
```

### b)	chaîne finissant par nologin. 
```
    grep nologin$  MonPass.txt
```

### c)	chaîne s contenant au moins un chiffre. 
```
    grep [1-9]*  MonPass.txt 
```

### d)	chaîne commençant par une majuscule. 
```
    grep ^[A-Z]  MonPass.txt 
```

### e)	chaîne commençant par «B», «E» ou «Q». 
```
    grep ^[BEQ]  MonPass.txt 
```

### f)	chaîne finissant par un point d'exclamation. 
```
    grep [\!]$  MonPass.txt 
```

### g)	chaîne ne finissant pas par un signe de ponctuation (point, virgule, point-virgule, deux-points, point d'interrogation, point d'exclamation). 
```
    grep [^\.\,\;\:\?\!]$ MonPass.txt 
    ou 
    grep '[^.,;:?!]$' MonPass.txt
```

### h)	chaîne contenant un «r» précédé de n'importe quelle lettre majuscule ou minuscule.
```
    grep [a-zA-Z]*r MonPass.txt 
```

### i)	chaîne dont la seconde lettre est un «r». 
```
    grep ^.r MonPass.txt 
```

### j)	chaîne commençant par un point 
```
grep ^[.] MonPass.txt

```

### k)	 chaîne ne commençant pas par un chiffre 
```
    grep [^0-9] MonPass.txt
```

### l)	chaîne contenant un nombre de trois chiffres
```
    grep [0-9][0-9][0-9]  MonPass.txt 
    ou
    grep "[0-9]\{3\}" MonPass.txt 
```

### m)	chaîne contenant un nombre d’au moins trois chiffres et au plus 5 chiffres
```
    grep "[0-9]\{3,5\}" MonPass.txt 
```
### n)	chaîne commençant par une majuscule et se terminant par un point.
```
    grep ^[A-Z].*[\.]$ test.txt 
```

### o)	chaîne qui se répète deux fois.
```
    grep "\(o\)\{2\}" MonPass.txt
```

## Exercice2
### Sur le fichier 
### •	Afficher les lignes commençant par des noms de login ne contenant pas de chiffre.

### •	Afficher les lignes commençant par des noms de login ne se terminant  pas par un chiffre.

### •	Afficher les lignes dont le nom de login commence par la chaine « user ».

### •	Afficher les lignes du fichier commençant par des noms de login de 3 ou 4 caractères.

### •	Afficher uniquement les champs contenant le login et le home directory.

### •	Extraire les noms de login et UID, redirigerez le tout vers un fichier pw1.

### •	Extraire les noms de login, triez dans l’ordre alphabétique inversée et redirigerez le tout vers un fichier pw2.

### •	Rediriger dans un fichier « utilisateurs » les noms de login des 10 derniers utilisateurs à la  fin du fichier  pw2.

## Exercice 3
### 1)	Soit le fichier ASCII qui contient deux colonnes séparées par le caractère blanc, la première contient  code ascii  et la deuxième le caractère correspondant
 
# "Exemple 
### "…
### "65 A
### "66 B
### "…

### Ecrire la commande permettant à partir du fichier ASCII et du code ascii d’afficher le caractère correspondant 

### 2)	Que font les commandes suivantes
### $ ls -l | grep '^-.*\.txt$'
### $ cat /etc/passwd | cut -d: -f1 | grep  "^A" > sortie
### 3)    Ecrire une commande qui affiche le nombre de fichier caché dans le répertoire courant.


