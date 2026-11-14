-- 1. Clients de Lyon
SELECT nom, prenom, email FROM client WHERE adresse = 'Lyon';

-- 2. Produits dont le stock est faible
SELECT nom_produit, stock FROM produit WHERE stock < 10;

-- 3. Clients avec leurs commandes (jointure)
SELECT client.nom, client.prenom, commande.id_commande, commande.montant_total
FROM client
JOIN commande ON client.id = commande.client_id;

-- 4. Total dépensé par client
SELECT client.nom, client.prenom, SUM(commande.montant_total) AS total
FROM client
JOIN commande ON client.id = commande.client_id
GROUP BY client.id, client.nom, client.prenom;

-- 5. Produits achetés par commande (3 tables)
SELECT commande.id_commande, produit.nom_produit, produit.prix
FROM commande
JOIN commande_produit ON commande.id_commande = commande_produit.commande_id
JOIN produit ON commande_produit.produit_id = produit.id_produit;
