# Configuration du Groupe de Sécurité AWS

Ce document décrit la configuration du groupe de sécurité AWS utilisé dans notre projet CI/CD.

## Règles Entrantes (Inbound Rules)

| Type | Protocole | Plage de Ports | Source |
|------|-----------|----------------|--------|
| SMTP | TCP | 25 | 0.0.0.0/0 |
| Custom TCP | TCP | 3000 - 10000 | 0.0.0.0/0 |
| HTTP | TCP | 80 | 0.0.0.0/0 |
| HTTPS | TCP | 443 | 0.0.0.0/0 |
| SSH | TCP | 22 | 0.0.0.0/0 |
| Custom TCP | TCP | 6443 | 0.0.0.0/0 |
| SMTPS | TCP | 465 | 0.0.0.0/0 |
| Custom TCP | TCP | 30000 - 32767 | 0.0.0.0/0 |

## Notes de Sécurité

- La source '0.0.0.0/0' signifie que l'accès est ouvert à toutes les adresses IP. Dans un environnement de production, il est recommandé de restreindre l'accès autant que possible.
- Le port 22 (SSH) devrait idéalement être limité à des adresses IP spécifiques pour une meilleure sécurité.
- Les plages de ports larges (comme 3000-10000 et 30000-32767) devraient être revues et limitées aux ports strictement nécessaires.

## Mise à Jour de la Configuration

Pour mettre à jour cette configuration, suivez les étapes de création d'instance EC2 dans le fichier `infrastructure-setup.md` et portez une attention particulière à l'étape 9 "Configure Security Group".