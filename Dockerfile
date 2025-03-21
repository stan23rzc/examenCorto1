FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

COPY . .

RUN chmod +x mvnw
RUN ./mvnw clean package -DskipTests

EXPOSE 8080
#y solo modifico el nombre del jar 
CMD ["java", "-jar", "target/corto1-0.0.1-SNAPSHOT.jar"]