FROM openjdk:17
RUN rm /etc/localtime && ln -fs /usr/share/zoneinfo/Europe/Kiev /etc/localtime
RUN microdnf install git
WORKDIR /app
RUN git clone  https://github.com/Tomas997/test.git .
EXPOSE 8080
ENTRYPOINT ["./mvnw", "spring-boot:run"]
