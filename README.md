# Bienvenue sur gensdubien_KM
* Date : 30/07/2018
* Créateurs :  Mohammed KHEZNADJI 


GenDuBien est un réseau d'associations basé en Algérie composé de jeunes ambicieux et de vrais exemples dans la  lutte  contre la pauvreté.
Mise en situation et définition du besoin : 
cette application permet aux gérants des antennes ou à un des bénévoles de l'association "Gens du Bien " de: 

- créer , gérer la liste des bénévoles
(id, nom , prenom, adresse, telephone, email, numero bénévole)
- créer , supprimer la liste des bénéficiares
( id , nom , prenom , adresse, téléphone, email, numero bénéficiares, nombre membre de fammiles)
- ajouter les produits collectés 
( aimentaires , produits frais : légumes et fruits, produits laitiers, produits surgelés 
produits d'hygiène., couchage, vetement  ) 
-faire le suivi des actions: collecte ou distribution avec la participation des béénévoles.

Elle permet au gérant ou à un bénévole  de gérer les bénévoles, bénéficiares, produits collectés et les événements .
# =======================================

# Lancement de l'application

## Pré-requis :

* Avoir télécharger TomCat 8.5.31
* Avoir télécharger Maven
* Avoir télécharger le fichier gensdubien_KM.war 

## Procédure d'installation :

* Récupérer gensdubien.sql dans le dossier src/main
* créer une BDD "gensdubien" MySQL en encodage UTF8 moteur InnoDB
* déployer une première fois l'application sur TomCat, le schéma de BDD sera créé automatiquement.
* importer le fichier gensdubien.sql dans la BDD
* Consulter le navigateur: localhost:8080/gensdubien/


# Exemple d'utilisation
### 1- Une fois l'application lancée, vous pouvez accéder à l'application en se connectant via l'un des deux logins suivants :
login: Mohammed      mot de passe: Alger
login: Frederic      mot de passe: Paris
### 2- Une fois connecté vous pouvez gérer les bénéficiaires , les bénévoles,  les produits collectés , et les événements

# =======================================
