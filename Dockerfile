FROM registry.redhat.io/ubi8:latest
USER root
RUN ls -l /etc/rhsm/rhsm.conf
RUN file /etc/rhsm/rhsm.conf
RUN dnf -y update
RUN dnf -y install flex 
 
