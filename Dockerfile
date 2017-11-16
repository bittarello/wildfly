FROM maxicredito/wildfly-base

MAINTAINER Carlos Bittarello <cbittarello@gmail.com>

USER root

RUN yum -y install java-1.8.0-openjdk-devel && yum clean all

USER wildfly

ENV JAVA_HOME /usr/lib/jvm/java

ENV WILDFLY_VERSION 11.0.0.Final

RUN cd $HOME && curl http://download.jboss.org/wildfly/$WILDFLY_VERSION/wildfly-$WILDFLY_VERSION.tar.gz | tar zx && mv $HOME/wildfly-$WILDFLY_VERSION $HOME/wildfly

ENV JBOSS_HOME /opt/wildfly/wildfly

ENV JAVA_OPTS ''

EXPOSE 8080 8443

CMD ["/opt/wildfly/wildfly/bin/standalone.sh", "-b", "0.0.0.0"]
