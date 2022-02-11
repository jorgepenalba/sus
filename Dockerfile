FROM registry.redhat.io/ubi8:latest
USER root
# Copy entitlements
COPY ./etc-pki-entitlement /etc/pki/entitlement
# Copy subscription manager configurations
#COPY ./rhsm-conf /etc/rhsm
#COPY ./rhsm-ca /etc/rhsm/ca
# Delete /etc/rhsm-host to use entitlements from the build container
RUN rm /etc/rhsm-host && \
   yum repolist --disablerepo=* && \
#    subscription-manager repos --enable <enabled-repo> && \
    yum -y update && \
    yum -y install flex && \
    # Remove entitlements and Subscription Manager configs
    rm -rf /etc/pki/entitlement && \
    rm -rf /etc/rhsm

