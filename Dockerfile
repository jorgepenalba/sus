FROM registry.redhat.io/ubi8/ubi:latest
RUN ls /etc/pki/entitlement
RUN dnf install -y flex
CMD sleep 3650d
