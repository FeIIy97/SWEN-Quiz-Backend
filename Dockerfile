FROM openjdk:11-jdk

COPY target/swen-quiz-backend-1.0.0-spring-boot.jar quiz-app.jar

ARG DB_CONNECTION_STRING
ARG JWT_ISSUER
ARG JWT_SECRET_KEY
ARG PW_SALT

ENV DB_CONNECTION_STRING=$DB_CONNECTION_STRING
ENV JWT_ISSUER=$JWT_ISSUER
ENV JWT_SECRET_KEY=$JWT_SECRET_KEY
ENV PW_SALT=$PW_SALT

ENTRYPOINT ["java","-jar","/quiz-app.jar"]
EXPOSE 9009
