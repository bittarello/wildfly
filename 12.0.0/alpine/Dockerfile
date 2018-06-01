FROM maxicredito/openjdk:8-alpine

MAINTAINER Carlos Bittarello <cbittarello@gmail.com>

ENV WILDFLY_VERSION 12.0.0.Final

ENV JBOSS_HOME /opt/wildfly

RUN RUN addgroup -g 1000 -S username && \
    adduser -u 1000 -S username -G username && \
	chmod 755 /opt/wildfly

RUN cd $HOME && \
    wget -q http://download.jboss.org/wildfly/$WILDFLY_VERSION/wildfly-$WILDFLY_VERSION.tar.gz | tar zx && \
    mv $HOME/wildfly-$WILDFLY_VERSION $JBOSS_HOME && \
    rm -rf wildfly-$WILDFLY_VERSION.tar.gz

USER wildfly

EXPOSE 8080

CMD ["/opt/wildfly/bin/standalone.sh", "-b", "0.0.0.0"]