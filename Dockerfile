#FROM registry.redhat.io/ubi8:latest
#USER root
#RUN rm -rf /etc/rhsm-host
#RUN dnf -y update
#RUN dnf -y install flex 

FROM registry.redhat.io/ubi8:latest
USER root
RUN cat /etc/rhsm/rhsm.conf | grep repo_ca_cert
RUN rm /etc/rhsm-host
#COPY ./etc-pki-entitlement /etc/pki/entitlement
RUN sed -i 's/.*repo_ca_cert.*/repo_ca_cert = \/etc\/rhsm\/ca\/redhat-uep.pem/g' /etc/rhsm/rhsm.conf
RUN cat /etc/rhsm/rhsm.conf | grep repo_ca_cert
RUN yum repolist --verbose
RUN grep sslcacert /etc/yum.repos.d/redhat.repo
RUN subscription-manager repos --list
RUN sleep 100
RUN yum -y install flex
