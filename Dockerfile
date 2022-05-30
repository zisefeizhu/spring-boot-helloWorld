FROM adoptopenjdk/openjdk11:alpine-jre

LABEL maintainer="zisefeizhu"

ADD target/spring-boot-helloworld-*-SNAPSHOT.jar /applications/spring-boot-helloworld.jar

ENTRYPOINT ["/bin/sh","-c","/opt/java/openjdk/bin/java -jar /applications/spring-boot-helloworld.jar --server.port=80"]
