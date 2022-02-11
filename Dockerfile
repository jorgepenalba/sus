FROM registry.redhat.io/ubi8/ubi:latest
RUN dnf install -y flex
CMD sleep 3650d
