FROM registry.redhat.io/ubi8:latest
USER root
RUN sed -i 's/.*repo_ca_cert.*/repo_ca_cert = \/etc\/rhsm\/ca\/redhat-uep.pem/g' /etc/rhsm/rhsm.conf
RUN ls -l /etc/rhsm/ca/redhat-uep.pem
RUN dnf -y update
RUN dnf -y install flex 
 
