

## Entrées/Sorties standards et Pipelines

### Vérifier au début de chaque partie que vous vous trouvez dans le répertoire formation avec la commande pwd, sinon se déplacer dans ce répertoire avec la commande :

```
    cd ~/formation

```

### 1)	Redirection de la sortie standard :
Taper les lignes de commandes suivantes :
```
    echo "Bonjour tout le monde"
```
Bonjour tout le monde


```
 echo "Bonjour tout le monde"   >   fichier1
``` 
la commande ls donne : fichier1

la commande    cat   fichier1 donne : Bonjour tout le monde


```
    echo "Hello Everybody"   >   fichier1
```
la commande ls donne : fichier1
la commande cat   fichier1   donne : Hello Everybody

```
     echo "Bonjour tout le monde" >>   fichier1
```

la commande   cat fichier1 donne : 
Hello Everybody
Bonjour tout le monde

```

 echo   "Salut tout le monde"	>>	fichier1
```
la commande    cat fichier1   donne : 
Hello Everybody
Bonjour tout le monde
Salut tout le monde
 
## 2)	Redirection de l’entrée standard :
Taper les commandes suivantes :
```
    cat
    Bonjour 
    ………… tout
    …………. le
    ……….. monde
    ………..
    « CTRL C »
```

```
    cat < fichier1

```


Hello Everybody
Bonjour tout le monde
Salut tout le monde

```
    cat  << fin  > fff
```

```
    sort -n  <<  FIN
```
## 3)	Redirection de la sortie d’erreur :
Taper les lignes de commandes suivantes :
$ mkdir  rep1/dossier/
mkdir: cannot create directory ‘rep1/dossier/’: No such file or directory


$ mkdir   rep1/dossier/	2>	fichier.err

la commande ls donne : fichier.err fichier1
la commande   vi   fichier.err   donne : ……………………………………………………......
```
     mkdir   rep2/dossier2/	2>> fichier.err
```
la commande    vi   fichier.err   donne : 
mkdir: cannot create directory ‘rep1/dossier/’: No such file or directory





## 4)	Joindre les deux sorties standards :
## Taper les lignes de commandes suivantes :
```
    cat fichier1 > copie_fichier1
```
la commande ls donne : fichier.err fichier1 copie_fichier1

la commande vi copie_fichier1 donne : 
Hello Everybody
Bonjour tout le monde
Salut tout le monde

```

cat fichier1 > copie_fichier2   2>&1

```
la commande   vi copie_fichier2 donne :.
Hello Everybody
Bonjour tout le monde
Salut tout le monde

```
    cat   fichier_inexistant	>	fichier2
```
la commande ls donne : fichier.err fichier1 copie_fichier1  fichier2

la commande	vi   fichier2	donne :
""

```
    cat   fichier_inexistant > fichier2	2>&1
```
la commande vi fichier2 donne : cat: fichier_inexistant: No such file or directory

```
     cat   fichier_inexistant2   >>   fichier2 	2>&1
```
la commande   vi fichier2	donne : 

cat: fichier_inexistant: No such file or directory
cat: fichier_inexistant2: No such file or directory

```
 cat   fichier_inexistant   2>&1	> fichier3
```
la commande    vi fichier3   donne : 
cat: fichier_inexistant2: No such file or directory


## 5)	Tubes de communication (pipes) :
## Taper les lignes de commandes suivantes :
```
 cat fichier1
 ```
Hello Everybody
Bonjour tout le monde
Salut tout le monde

```
grep Hello   fichier1
```
Hello Everybody

```
cat fichier1 |   grep Hello
```

Hello Everybody

```
cat fichier1 |   grep tout

```
Bonjour tout le monde
Salut tout le monde


```
cat fichier1 | grep tout |   wc -l

```
2

```

  cat fichier1 |   grep tout | grep Salut
```
Salut tout le monde

```
 cat   fichier1 |   grep	^[BH].*
```
Hello Everybody
Bonjour tout le monde


```
    cat   fichier1 |   grep	monde$

```
Bonjour tout le monde
Salut tout le monde

## Copier le fichier /usr/share/dict/words dans le répertoire courant à l’aide de la commande :
cp   /usr/share/dict/words 	.

Afficher les 100 dernières lignes de ce fichier : 

tail -100 words


## Sachant que chaque ligne dans le fichier words contient un seul mot, Afficher les mots qui contiennent la chaîne « zoo » dans les 100 derniers mots en utilisant les regex, déterminer leur nombre :
 
```
tail -100 words | egrep "^zoo" 
tail -100 words | egrep "^zoo" | wc -l
```

## Déterminer le nombre de mots dans le fichier words qui coommence par les lettres k,m ou p
## et la seconde lettre est a,i ou e et se tremine par e:

```
grep ^[kmp][aie].e$ words
```

## 6)	Les commandes tee et xargs :
## Taper les lignes de commandes suivantes :
$ ls

$ ls |   tee list.txt

## la commande ls donne :  

copie_fichier1  fichier.err  fichier2  list.txt        words
copie_fichier2  fichier1     fichier3  sortie_pipe.md


## la commande   vi list.txt donne : 

cat fichier1 |   grep tout | tee -a list.txt

copie_fichier1
copie_fichier2
fichier.err
fichier1
fichier2
fichier3
sortie_pipe.md
words




## la commande   vi list.txt donne : 
copie_fichier1
copie_fichier2
fichier.err
fichier1
fichier2
fichier3
sortie_pipe.md
words

```
 ls -l   |   tee -a list.txt	> list2.txt
```



## la commande   vi list.txt donne : 
copie_fichier1
copie_fichier2
fichier.err
fichier1
fichier2
fichier3
sortie_pipe.md
words
total 976
-rw-rw-r-- 1 formation formation     58 Feb  9 15:17 copie_fichier1
-rw-rw-r-- 1 formation formation     58 Feb  9 15:19 copie_fichier2
-rw-rw-r-- 1 formation formation     78 Feb  9 15:16 fichier.err
-rw-rw-r-- 1 formation formation     58 Feb  9 14:59 fichier1
-rw-rw-r-- 1 formation formation    103 Feb  9 15:57 fichier2
-rw-rw-r-- 1 formation formation      0 Feb  9 15:59 fichier3
-rw-rw-r-- 1 formation formation     90 Feb 10 11:05 list.txt
-rw-rw-r-- 1 formation formation      0 Feb 10 11:05 list2.txt
-rw-rw-r-- 1 formation formation      0 Feb  9 14:45 sortie_pipe.md
-rw-r--r-- 1 formation formation 972398 Feb  9 16:14 words


##  la commande   vi list2.txt donne : 
total 976
-rw-rw-r-- 1 formation formation     58 Feb  9 15:17 copie_fichier1
-rw-rw-r-- 1 formation formation     58 Feb  9 15:19 copie_fichier2
-rw-rw-r-- 1 formation formation     78 Feb  9 15:16 fichier.err
-rw-rw-r-- 1 formation formation     58 Feb  9 14:59 fichier1
-rw-rw-r-- 1 formation formation    103 Feb  9 15:57 fichier2
-rw-rw-r-- 1 formation formation      0 Feb  9 15:59 fichier3
-rw-rw-r-- 1 formation formation     90 Feb 10 11:05 list.txt
-rw-rw-r-- 1 formation formation      0 Feb 10 11:05 list2.txt
-rw-rw-r-- 1 formation formation      0 Feb  9 14:45 sortie_pipe.md
-rw-r--r-- 1 formation formation 972398 Feb  9 16:14 words

```
echo "repertoire1 repertoire2" >   list_rep.txt
```

```
  cat list_rep.txt | xargs mkdir

```
la commande ls donne : 

copie_fichier1  fichier.err  fichier2  list.txt   list_rep.txt  repertoire2     words
copie_fichier2  fichier1     fichier3  list2.txt  repertoire1   sortie_pipe.md


```
rm -rf   repertoire?

```

```
 cat list_rep.txt | xargs -t mkdir

```


la commande ls donne : 

copie_fichier1  fichier.err  fichier2  list.txt   list_rep.txt  repertoire2     words
copie_fichier2  fichier1     fichier3  list2.txt  repertoire1   sortie_pipe.md


## 7)	Les opérateurs || et && :
## Taper les lignes de commandes suivantes :
rm -rf *
la commande ls donne : 

mkdir rep1/dossier1/

mkdir rep1/dossier1/ ||   mkdir rep1

la commande ls -R ou la commande tree donne :
```
.:
copie_fichier1  fichier.err  fichier2  list.txt   list_rep.txt  repertoire1  sortie_pipe.md
copie_fichier2  fichier1     fichier3  list2.txt  rep1          repertoire2  words

./rep1:

./repertoire1:

./repertoire2:

```
```
 mkdir rep1/dossier1/ ||   mkdir rep1/dossier2
 ```
la commande ls -R ou la commande tree donne :

```
.
├── copie_fichier1
├── copie_fichier2
├── fichier.err
├── fichier1
├── fichier2
├── fichier3
├── list.txt
├── list2.txt
├── list_rep.txt
├── rep1
│   └── dossier1
├── repertoire1
├── repertoire2
├── sortie_pipe.md
└── words
```

 rm -rf *
la commande ls donne : 

$ mkdir rep1/dossier1/

$ mkdir rep1/dossier1/ &&   mkdir rep1
la commande ls donne : 
$ mkdir rep1 &&   mkdir rep1/dossier1
la commande ls -R ou bien la commande tree donne :


