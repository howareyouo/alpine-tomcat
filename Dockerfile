FROM jeanblanchard/tomcat
MAINTAINER backflow <hunan_me@163.com>

ENV MAVEN_HOME /opt/maven
ENV PATH ${PATH}:${MAVEN_HOME}/bin

# install git and maven
RUN RUN apk --uupdate add git && \
    curl -kLS http://mirrors.cnnic.cn/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz \
    | tar -zx -C /opt && \
    rm -rf /var/cache/apk/* && \
    mv /opt/apache-maven-3.3.9 ${MAVEN_HOME}
