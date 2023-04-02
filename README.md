## DecompPYC

Ce script Ruby permet de 
décompiler les fichiers pyc 
en bytecode Python. 
Le bytecode est ensuite 
affiché à l'écran sous forme 
de code assembleur.

### Utilisation

Pour utiliser le script, 
assurez-vous que Ruby est 
installé sur votre système. 
Ensuite, exécutez le script 
en ligne de commande en passant 
en argument le nom du fichier pyc 
que vous souhaitez décompiler :
```
ruby decompile_pyc.rb fichier.pyc
```

# Installation 

```
sudo apt-get install ruby
sudo apt-get install git
git clone https://github.com/Gh0st1GY/DecompPYC
cd DecompPYC
```

### Prérequis

- Ruby

### Fonctionnement

Le script utilise la bibliothèque 
standard Ruby "marshal" pour décoder 
le bytecode pyc en un objet Ruby. 
Ensuite, il utilise la méthode 
`RubyVM::InstructionSequence.compile()`
pour décompiler le bytecode et afficher 
le résultat à l'écran.

### Développeurs

 - Gh0st1GY 

### Tout droits réservés
