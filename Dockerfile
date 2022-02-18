FROM registry.redhat.io/ubi8:latest
USER root
RUN cat /etc/rhsm-host | grep repo_ca_cert
RUN sed -i 's/.*repo_ca_cert.*/repo_ca_cert = \/etc\/rhsm\/ca\/redhat-uep.pem/g' /etc/rhsm-host
RUN cat /etc/rhsm-host | grep repo_ca_cert
RUN dnf -y update
RUN dnf -y install flex 
 
