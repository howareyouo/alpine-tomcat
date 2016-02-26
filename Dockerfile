FROM jeanblanchard/tomcat
MAINTAINER backflow <hunan_me@163.com>

ENV MAVEN_HOME /opt/maven
ENV PATH ${PATH}:${MAVEN_HOME}/bin

# install git and maven
RUN apk --update add git
RUN wget http://mirrors.cnnic.cn/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz
RUN tar -zxf apache-maven-3.3.9-bin.tar.gz
RUN rm -rf apache-maven-3.3.9-bin.tar.gz /var/cache/apk/*
RUN mv apache-maven-3.3.9 ${MAVEN_HOME}
