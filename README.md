# README

Cette application donne accès à des utilisateurs et leurs publications.
Nous souhaitons y ajouter la capacité de notifier des utilisateurs lors de la création d'une publication.et de suivre les statistiques liées.

nb: La partie d'envoi de notification ne sera pas fonctionnelle.

Ce qui est attendu :

* Ajouter une API permettant de créer une publication

* A la création d'une publiation envoyer une notification de façon asynchrone. Pour envoyer une notification utiliser la fonction du module Notifier.

* Ajouter au modèle Post les informations sur les statistiques d'envoi et d'ouverture des notifications. 

* Créer une rake task responsable d'aller récupérer les statistiques de notifications pour l'ensemble des publications et de stocker ces informations en base de données. Pour récupérer les statistique utiliser la fonction du module Notifier. 

* Faire évoluer la sérialisation de la publication et y ajouter les statistiques d'envoi des notifications 

Idéalement (sans être obligatoire), la modélisation proposée permettra facilement de notifier d'autres types de données, par exemple plus tard des commentaires.
