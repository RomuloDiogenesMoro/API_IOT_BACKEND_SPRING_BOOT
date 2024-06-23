# Etapa de construção
FROM openjdk:17-jdk-slim
#WORKDIR /app
#COPY build/libs/backend-0.0.1-SNAPSHOT.jar app.jar
#EXPOSE 8080
#ENTRYPOINT ["java", "-jar", "app.jar"]


# Define o diretório de trabalho no contêiner
WORKDIR /app

# Copia o arquivo JAR para o contêiner
COPY target/API_IOT_BACKEND_SPRING_BOOT.jar /app/API_IOT_BACKEND_SPRING_BOOT.jar

# Expõe a porta que a aplicação vai rodar
EXPOSE 8080

# Comando para executar a aplicação
CMD ["java", "-jar", "API_IOT_BACKEND_SPRING_BOOT.jar"]