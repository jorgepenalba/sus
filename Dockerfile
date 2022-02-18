FROM registry.redhat.io/ubi8:latest
USER root
RUN sed -i 's/.*repo_ca_cert.*/repo_ca_cert = \/etc\/rhsm\/ca\/redhat-uep.pem/g' /etc/rhsm/rhsm.conf
RUN md5sum /etc/rhsm/ca/redhat-uep.pem
RUN md5sum /etc/pki/entitlement/*
RUN dnf -y update
RUN dnf -y install flex 
 
