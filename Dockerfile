FROM centos:7

LABEL name="bluebankio/corda" \
      maintainer="salim.badakhchani@bluebank.io" \
      vendor="bluebankio" \
      version="1" \
      release="1" \
      summary="Public docker image for https://www.corda.net" \
      description="Corda is a distributed ledger platform designed to record, manage and automate legal agreements between business partners. Designed by (and for) the world's largest financial institutions yet with applications in multiple industries. It offers a unique response to the privacy and scalability challenges facing decentralised applications. https://www.corda.net - Base docker image for Corda"

### Setup user for build execution and application runtime
ENV APP_ROOT=/opt/app-root
ENV PATH=${APP_ROOT}:${PATH} HOME=${APP_ROOT}

### Containers should NOT run as root as a good practice
WORKDIR ${APP_ROOT}

RUN yum update -y && \
    yum install -y wget && \
    yum install -y java-1.8.0-openjdk && \
    yum clean all && \
    rm -rf /var/cache/yum && \
    mkdir -p ${APP_ROOT}/plugins && \
    mkdir -p ${APP_ROOT}/certificates && \
    mkdir -p ${APP_ROOT}/.cache && \
    chmod -R u+x ${APP_ROOT} && \
    chgrp -R 0 ${APP_ROOT} && \
    chmod -R g=u ${APP_ROOT} /etc/passwd && \
    wget -O ${APP_ROOT}/corda.jar http://repo1.maven.org/maven2/net/corda/corda/1.0.0/corda-1.0.0.jar && \
    chown -R 10001:10001 ${APP_ROOT}

EXPOSE 10002 10004

USER 10001

CMD [ "java", "-jar", "corda.jar" ]
