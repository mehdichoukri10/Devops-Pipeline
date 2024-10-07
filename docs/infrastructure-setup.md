# Configuration de l'Infrastructure

Ce document décrit les étapes pour créer une instance EC2 Ubuntu sur AWS pour notre projet CI/CD.

## Création d'une Instance EC2 Ubuntu

1. **Connexion à AWS**:
   - Allez sur https://aws.amazon.com/console/
   - Connectez-vous avec vos identifiants AWS

2. **Accès à EC2**:
   - Dans la barre de recherche, tapez "EC2"
   - Sélectionnez "EC2" sous la section "Compute"

3. **Lancement d'une Instance**:
   - Cliquez sur "Instances" dans le menu latéral
   - Cliquez sur "Lancer une instance"

4. **Choix de l'AMI**:
   - Sélectionnez "Ubuntu" dans la liste des AMI
   - Choisissez "Ubuntu Server 20.04 LTS" (ou la version souhaitée)

5. **Type d'Instance**:
   - Choisissez le type d'instance (ex: t2.micro pour les tests)

6. **Détails de l'Instance**:
   - Configurez les détails selon vos besoins ou laissez les valeurs par défaut

7. **Stockage**:
   - Spécifiez la taille du volume racine si nécessaire

8. **Tags**:
   - Ajoutez des tags pour l'organisation si souhaité

9. **Groupe de Sécurité**:
   - Configurez le groupe de sécurité selon `aws-security-config.md`
   - Assurez-vous d'autoriser l'accès SSH (port 22) depuis votre adresse IP

10. **Revue et Lancement**:
    - Vérifiez la configuration
    - Cliquez sur "Lancer"

11. **Paire de Clés**:
    - Sélectionnez une paire de clés existante ou créez-en une nouvelle
    - Acceptez les conditions et lancez l'instance

12. **Accès à l'Instance**:
    - Utilisez MobaXterm pour vous connecter via SSH

