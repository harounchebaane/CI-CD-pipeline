# 1. Image de base (Java 17)
FROM openjdk:17-jdk-slim

# 2. Dossier de travail dans le conteneur
WORKDIR /app

# 3. Copier le JAR généré par Maven dans le conteneur
# On suppose que ton JAR s'appelle student-management-0.0.1-SNAPSHOT.jar
COPY target/*.jar app.jar

# 4. Port exposé par ton application Spring Boot
EXPOSE 8080

# 5. Commande pour démarrer l'application
ENTRYPOINT ["java", "-jar", "app.jar"]
