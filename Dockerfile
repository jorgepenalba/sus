#FROM registry.redhat.io/ubi8:latest
USER root
#RUN rm -rf /etc/rhsm-host
RUN dnf -y update
RUN dnf -y install flex 
