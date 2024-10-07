# Devops-Pipeline

## Description
Ce projet démontre la mise en place d'un pipeline CI/CD complet utilisant Jenkins, Docker, Kubernetes, SonarQube, et Nexus. Il fournit une infrastructure automatisée pour le build, le test, l'analyse de code, la conteneurisation et le déploiement d'applications.

## Composants du Projet
- Jenkins pour l'orchestration du pipeline CI/CD
- Docker pour la conteneurisation
- Kubernetes pour le déploiement et la gestion des conteneurs
- SonarQube pour l'analyse de qualité du code
- Nexus comme registre d'artefacts
- Prometheus pour le monitoring

## Structure du Projet
DevOps-Pipeline/ ├── kubernetes/ │ ├── deployment.yaml │ ├── service.yaml │ └── rbac.yaml ├── jenkins/ │ └── Jenkinsfile ├── monitoring/ │ └── prometheus-config.yaml ├── scripts/ │ ├── setup_k8s_cluster.sh │ ├── install_jenkins.sh │ ├── install_docker.sh │ ├── install_nexus.sh │ └── install_sonarqube.sh ├── docs/ │ ├── aws-security-config.md │ └── infrastructure-setup.md └── README.md

## Prérequis
- AWS Account
- Kubernetes Cluster
- Jenkins Server
- Docker
- SonarQube Server
- Nexus Repository Manager

## Configuration et Déploiement

1. Configuration de l'Infrastructure
   - Suivez les instructions dans `docs/infrastructure-setup.md` pour configurer l'environnement AWS.
   - Utilisez les scripts dans le dossier `scripts/` pour installer les composants nécessaires.

2. Configuration de Jenkins
   - Configurez Jenkins en utilisant le Jenkinsfile fourni dans le dossier `jenkins/`.
   - Assurez-vous d'avoir configuré les credentials nécessaires dans Jenkins.

3. Déploiement Kubernetes
   - Appliquez les fichiers de configuration Kubernetes :
     ```
     kubectl apply -f kubernetes/deployment.yaml
     kubectl apply -f kubernetes/service.yaml
     kubectl apply -f kubernetes/rbac.yaml
     ```

4. Configuration du Monitoring
   - Déployez Prometheus en utilisant le fichier `monitoring/prometheus-config.yaml`.

## Utilisation du Pipeline

1. Créez un nouveau job dans Jenkins pointant vers le Jenkinsfile de ce projet.
2. Déclenchez le pipeline manuellement ou configurez des webhooks pour un déclenchement automatique.
3. Le pipeline effectuera automatiquement le build, les tests, l'analyse SonarQube, la création d'image Docker, et le déploiement sur Kubernetes.

## Sécurité
Consultez `docs/aws-security-config.md` pour les détails sur la configuration de sécurité AWS.

## Monitoring
Prometheus est configuré pour surveiller les métriques du cluster Kubernetes et des applications déployées. Accédez au dashboard Prometheus pour visualiser les métriques.

## Contribution
Les contributions à ce projet sont les bienvenues. Veuillez suivre ces étapes :
1. Forkez le projet
2. Créez votre branche de fonctionnalité (`git checkout -b feature/AmazingFeature`)
3. Commitez vos changements (`git commit -m 'Add some AmazingFeature'`)
4. Poussez vers la branche (`git push origin feature/AmazingFeature`)
5. Ouvrez une Pull Request
