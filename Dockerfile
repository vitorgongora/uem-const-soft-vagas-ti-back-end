FROM eclipse-temurin:17-jammy as base
WORKDIR /app

COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ["./mvnw", "verify", "--fail-never"]

COPY src ./src

FROM base as test
CMD ["./mvnw", "test"]

FROM base as dev
CMD ["./mvnw", "spring-boot:run", "-Dspring-boot.run.jvmArguments='-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:5005'"]

FROM base as prod
CMD ["./mvnw", "package"]