FROM registry.redhat.io/ubi8/ubi:latest
USER root
# Copy entitlements
COPY ./etc-pki-entitlement /etc/pki/entitlement
# Copy subscription manager configurations
#COPY ./rhsm-conf /etc/rhsm
#COPY ./rhsm-ca /etc/rhsm/ca
# Delete /etc/rhsm-host to use entitlements from the build container
RUN rm /etc/rhsm-host
RUN yum repolist --disablerepo=*
RUN subscription-manager repos --enable <enabled-repo>
RUN yum -y update
RUN yum -y install flex 
RUN rm -rf /etc/pki/entitlement 
RUN rm -rf /etc/rhsm
# Run openshift
CMD sleep 3650d

