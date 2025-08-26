# Usando a imagem oficial do OpenJDK 17
FROM eclipse-temurin:17-jdk-alpine

# Define diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos do projeto
COPY .mvn/ .mvn
COPY mvnw pom.xml ./
COPY src ./src

# Build do projeto dentro do container
RUN ./mvnw clean package -DskipTests

# Define variável de ambiente para Spring
ENV JAVA_OPTS=""

# Expõe a porta padrão do Spring Boot
EXPOSE 8080

# Comando para rodar a aplicação
CMD ["sh", "-c", "java $JAVA_OPTS -jar target/*.jar"]
