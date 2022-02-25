FROM registry.redhat.io/ubi8:latest
USER root
RUN ls -ltr /etc/rhsm-host/
RUN rm -rf /etc/rhsm-host
RUN dnf -y update
RUN dnf -y install flex 
