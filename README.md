# boutique-sql

Base de données MySQL d'une boutique en ligne d'ordinateurs portables : gestion des clients, des produits et des commandes. Projet personnel réalisé pour m'entraîner au SQL.

## Contenu du dépôt

- boutique.sql : structure des tables et données d'exemple
- requetes.sql : requêtes SQL (sélection, jointures, regroupements)

## Tables

- client : nom, prénom, email, téléphone, adresse
- produit : nom, description, prix, stock
- commande : montant total, date, client concerné
- commande_produit : lien entre les commandes et les produits

La base contient aussi une vue, les_produit_cher, qui liste les produits les plus chers.

## Utilisation

1. Créer la base : CREATE DATABASE boutique;
2. Importer le fichier : mysql -u root -p boutique < boutique.sql
3. Exécuter les requêtes de requetes.sql 
## Outils

MySQL 8.0
