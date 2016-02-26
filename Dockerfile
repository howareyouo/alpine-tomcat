FROM jeanblanchard/tomcat
MAINTAINER backflow <hunan_me@163.com>

ENV MAVEN_HOME /opt/maven
ENV PATH ${PATH}:${MAVEN_HOME}/bin

# install git and maven
RUN apk --update add git && \
    curl -kLSs http://apache.opencas.org/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz && \
    tar -zxf -C /opt && \
    rm -rf /var/cache/apk/* && \
    mv /opt/apache-maven-3.3.9 ${MAVEN_HOME}
