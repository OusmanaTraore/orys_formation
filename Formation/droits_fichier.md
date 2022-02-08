# création du repertoire

mkdir repertoire_test_droit
ls -la 
repertoire_test_droit (rwxr-xr-x)

#  donner les droits au fichier pour qu'il obtienne les droits suivants RWX R-X --X
chmod 751 repertoire_test_droit (mode octal)
chmod u=rwx, g=rx, o=x   (notation symbolique)

#  remise des droits a 755  R-X --X
chmod 755 repertoire_test_droit (mode octal)
chmod u=rwx, g,0=rx,    (notation symbolique)


#  donner les droits au fichier pour qu'il obtienne les droits suivants R-X -W- --X
chmod 521 repertoire_test_droit (mode octal)
chmod u=rx, g=w, o=x   (notation symbolique)

#  remise des droits a 755  R-X --X
chmod 755 repertoire_test_droit (mode octal)
chmod u=rwx, g,0=rx,    (notation symbolique)

#  donner les droits au fichier pour qu'il obtienne les droits suivants -W- --X r--
chmod 214 repertoire_test_droit (mode octal)
chmod u=w, g=x, o=r   (notation symbolique)

#  remise des droits a 755  R-X --X
chmod 755 repertoire_test_droit (mode octal)
chmod u=rwx, g,0=rx,    (notation symbolique)

#  donner les droits au fichier pour qu'il obtienne les droits suivants --X R-X ---
chmod 150 repertoire_test_droit (mode octal)
chmod u=x, g=rx, o-rwx   (notation symbolique)

######
mkdir -p repertoire_test_droit/droit (644 par défaut) 
cd

######
777- 750 = 027
umask 027

