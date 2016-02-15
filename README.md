# Spring Boot Daemon Demo

A simple Spring Boot web app that returns "Hello world!" when you access its root endpoint. The real purpose of this app
is to demonstrate how build it as an RPM/DEB package, and to install and run it as an `init.d` daemon. The
`build.gradle` handles all of this heavy lifting, as well as some of the conventions of Spring Boot 1.3.2. Please see
my [blog post](https://www.ccampo.me/java/spring/spring-boot/unix/linux/2016/02/15/boot-service-package.html) for more detailed information.

## To build

    ./gradlew clean build

### To do a complete package (rpm/deb) build

    ./gradlew clean build buildRpm

and/or

    ./gradlew clean build buildDeb

## To run

    ./gradlew clean bootRun

Once the application is running, navigate to `http://localhost:8080/` in your browser (or use `curl` or any HTTP client)
and you should see the text "Hello world!".

## To generate and Eclipse or IntelliJ Idea project

    ./gradlew eclipse

and/or

    ./gradlew idea