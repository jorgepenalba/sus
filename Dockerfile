FROM registry.redhat.io/ubi8:latest
USER root
RUN rm /etc/rhsm-host && \
#   yum repolist --disablerepo=* && \
    dnf -y update && \
    dnf -y install flex 
 
