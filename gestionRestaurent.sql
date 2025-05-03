create database gestion_restaurent;

use gestion_restaurent;
create table utilisisateur(nom varchar(20),prenom varchar(20),cin int(20),login int(20),mdp varchar(20),typeUser varchar(20));
create table commande(num_commande int(20) primary key auto_increment,statut varchar(20),totalité int(20),dateC date);
create table menu(idmenu int(20) primary key auto_increment,nomMenu varchar(20),listePlats varchar(20));
create table plat(idPlat int(20) primary key auto_increment,nomPlat varchar(20),description varchar(20),disponibilité boolean,prix decimal(5.5), FOREIGN KEY (idmenu) REFERENCES menu(id));
create table facture(num_facture int(20) primary key auto_increment,totalité_facture decimal(20.5),dateFac date,commandeAssocié varchar(20));
create table ligneDeCommande(quantité int(20),prixUnit decimal(5.5),sous_total decimal(5.5), FOREIGN KEY (num_commande) REFERENCES commande(num_commande) ON DELETE CASCADE,
    FOREIGN KEY (idplat) REFERENCES plat(id));