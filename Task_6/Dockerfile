FROM eclipse-temurin

WORKDIR /app

COPY . /app

EXPOSE 8080

RUN ./mvnw dependency:resolve

CMD ["./mvnw" , "spring-boot:run"]

#CMD ["/bin/sh", "-c", "java -jar /app/target/*.jar"]
