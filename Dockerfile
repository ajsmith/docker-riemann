FROM rhel6.7

MAINTAINER Alex Smith <alex.smith@redhat.com>

RUN echo "6.7" > /etc/yum/vars/releasever &&\
    yum install -y --disablerepo=* --enablerepo=rhel-6-server-rpms https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm &&\
    yum install -y --disablerepo=* --enablerepo=rhel-6-server-rpms --enablerepo=epel https://aphyr.com/riemann/riemann-0.2.10-1.noarch.rpm &&\
    yum clean all

COPY riemann.config /etc/riemann/riemann.config
COPY riemann.d /etc/riemann.d

EXPOSE 5555 5556

ENTRYPOINT ["/usr/bin/riemann"]
