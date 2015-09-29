#  CentOS 7 + IBM IM + WebSphere Application Server for Developers v8.5.5.3
#  Original from https://github.com/andrefernandes/docker-websphere

FROM jjacobso/ibmim:latest

MAINTAINER John Jacobson - jjacobso@gmail.com

ADD scripts.zip /opt/scripts.zip

RUN unzip /opt/scripts.zip -d /opt && /opt/install.sh

EXPOSE 9080 9443 9060 9043

CMD ["/opt/startserver.sh"]
