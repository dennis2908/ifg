FROM maven:3.8.5-openjdk-17

WORKDIR /bezkoder-app
COPY . .

RUN mvn clean package -Dmaven.test.skip -Dmaven.main.skip -Dspring-boot.repackage.skip && rm -r target/

CMD mvn spring-boot:run