FROM registry.access.redhat.com/jboss-eap-6/eap64-openshift:latest

USER root

COPY deployments/SSOA.war /opt/eap/standalone/deployments/SSOA.war
#COPY SSOA.war /standalone/deployments/SSOA.war
#COPY SSOA.war /deployments/SSOA.war

#COPY standalone.xml /opt/eap/standalone/configuration/

RUN mkdir /applogs
RUN mkdir /applogs/ssoa

VOLUME /applogs
