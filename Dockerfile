FROM java:7

MAINTAINER Docker Training <education@docker.com>

ENV FOO bar
ENV JAVA_HOME /usr/bin/java
ENV APP_REL="1.0" SERV_REL="1.0"

COPY src /home/root/javahelloworld/src

VOLUME /myvol

WORKDIR /home/root/javahelloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
RUN mkdir /opt/tmp

RUN mkdir /data/myvol -p
RUN echo "put danzone in the file" > /data/myvol/test

VOLUME /data/myvol

EXPOSE 21 22 23

ENTRYPOINT ["java","-cp","bin","HelloWorld"]
