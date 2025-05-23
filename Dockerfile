FROM quay.io/fedora/fedora:41-x86_64
MAINTAINER Jiri Stransky <jistr@jistr.com>

RUN dnf -y update --refresh; dnf clean all

COPY build.sh /root/build.sh
RUN /root/build.sh

USER radicale
CMD ["/usr/bin/python3", "-m", "radicale", "--config=/etc/radicale/config"]
