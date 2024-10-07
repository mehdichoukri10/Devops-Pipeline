#!/bin/bash

# Vérifier si Docker est installé
if ! command -v docker &> /dev/null
then
    echo "Docker n'est pas installé. Veuillez d'abord installer Docker."
    exit 1
fi

# Lancer SonarQube dans un conteneur Docker
docker run -d --name sonarqube -p 9000:9000 sonarqube:lts-community

echo "SonarQube est en cours de démarrage. Veuillez patienter quelques minutes..."
echo "Une fois démarré, SonarQube sera accessible à l'adresse http://localhost:9000"

# Attendre que SonarQube soit complètement démarré
while ! curl -s http://localhost:9000 > /dev/null
do
    sleep 10
done

echo "SonarQube est prêt."
echo "Utilisez les identifiants par défaut pour vous connecter :"
echo "Nom d'utilisateur : admin"
echo "Mot de passe : admin"
echo "N'oubliez pas de changer ce mot de passe lors de votre première connexion."