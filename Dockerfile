FROM atlassian/confluence-server:7.0.2-adoptopenjdk8

WORKDIR /tmp
COPY script.sh /tmp/script.sh

RUN /tmp/script.sh 
#RUN curl -LO https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.48.tar.gz

RUN  tar -xvzf mysql-connector-java-5.1.48.tar.gz\
    && cp mysql-connector-java-5.1.48/mysql-connector-java-5.1.48-bin.jar \
    /opt/atlassian/confluence/confluence/WEB-INF/lib

    #/opt/atlassian/confluence/lib