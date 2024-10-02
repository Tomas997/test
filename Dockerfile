FROM openjdk:17
RUN rm /etc/localtime && ln -fs /usr/share/zoneinfo/Europe/Kiev /etc/localtime
WORKDIR /app
EXPOSE 8080
RUN chmod +x mvnw
ENTRYPOINT ["./mvnw", "spring-boot:run"]
