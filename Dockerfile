FROM jeanblanchard/tomcat
MAINTAINER backflow <hunan_me@163.com>

ENV MAVEN_HOME /opt/maven
ENV PATH ${PATH}:${MAVEN_HOME}/bin

# install git and maven
RUN apk --uupdate add git
RUN curl -kLS http://mirrors.cnnic.cn/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz | tar -zx -C /opt
RUN rm -rf /var/cache/apk/*
RUN mv /opt/apache-maven-3.3.9 ${MAVEN_HOME}
