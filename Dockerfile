FROM eclipse-temurin:17
WORKDIR /home/app
COPY ./build/libs/g6-nginx-proxy-0.1.war /home/app/application.war

ENTRYPOINT ["java", "-jar", "/home/app/application.war"]