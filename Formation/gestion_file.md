# Make directory "Formation"
mkdir Formation

# Création des fichiers
touch {cours,tp,td}_{Algo,Python,Unix,ProgrammationC}_{1,2,3,4,5}

# Compte des fichiers
ls -l | wc -l

# Création de 4 repertoires
mkdir Algo Python Unix ProgrammationC

# Deplacement des fichiers
mv *Algo* Algo/
mv *Python* Python/
mv *ProgrammationC* ProgrammationC/
mv *Unix* Unix/

# Création de sous répertoires
mkdir Algo/Cours Algo/Travaux1 Algo/Travaux2
mkdir Unix/Cours Unix/Travaux1 Unix/Travaux2

# Se déplacer dans les sous repertoires et déplacement de fichiers
cd Unix
mv t?_Unix_[1-3] Travaux1 
mv t?_Unix_[!1-3] Travaux2
mv cours* Cours/ 

cd Algo
mv t?_Algo_[1-3] Travaux1 
mv t?_Algo_[!1-3] Travaux2
mv cours* Cours/ 

cd
mkdir Python/Cours Python/TD Python/TP
mkdir ProgrammationC/Cours ProgrammationC/TD ProgrammationC/TP

# Se déplacer dans les sous repertoires et déplacement de fichiers (2)
cd ProgrammationC
mv tp_ProgrammationC_[135] TP/
mv td_ProgrammationC_[135] TD/
mv cours_[1-3] Cours/

rm T?[24]
rm cours_[45]

#  tree
sudo apt install tree
tree

# création des fichiers
touch fichier1.txt fichier2.txt fichier?.txt
ls fichier?.txt
ls fichier\?.txt


# suppression des fichiers
rm -rf *
