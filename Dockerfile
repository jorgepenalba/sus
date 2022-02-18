FROM registry.redhat.io/ubi8:latest
USER root
RUN dnf -y update
RUN dnf -y install flex 
 
