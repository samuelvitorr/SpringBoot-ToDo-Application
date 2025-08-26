FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

COPY .mvn/ .mvn
COPY mvnw pom.xml ./
COPY src ./src

# Permissão para o Maven Wrapper
RUN chmod +x mvnw

RUN ./mvnw clean package -DskipTests

# Variável de ambiente do Spring
ENV SPRING_PROFILES_ACTIVE=prod

# Porta que o container vai expor
EXPOSE 8080

# Comando de inicialização
CMD ["java", "-jar", "target/seu-projeto.jar"]