#!/bin/bash

# Vérifier si Docker est installé
if ! command -v docker &> /dev/null
then
    echo "Docker n'est pas installé. Veuillez d'abord installer Docker."
    exit 1
fi

# Lancer Nexus dans un conteneur Docker
docker run -d --name nexus -p 8081:8081 sonatype/nexus3:latest

echo "Nexus est en cours de démarrage. Veuillez patienter quelques minutes..."
echo "Une fois démarré, Nexus sera accessible à l'adresse http://localhost:8081"

# Attendre que Nexus soit complètement démarré
while ! curl -s http://localhost:8081 > /dev/null
do
    sleep 10
done

echo "Nexus est prêt. Récupération du mot de passe initial..."

# Récupérer l'ID du conteneur
CONTAINER_ID=$(docker ps -qf "name=nexus")

# Récupérer le mot de passe initial
INITIAL_PASSWORD=$(docker exec $CONTAINER_ID cat /nexus-data/admin.password)

echo "Le mot de passe initial pour l'administrateur est : $INITIAL_PASSWORD"
echo "Veuillez changer ce mot de passe lors de votre première connexion."