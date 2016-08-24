FROM rhel:7.2

MAINTAINER Alex Smith <alex.smith@redhat.com>

RUN yum install -y --disablerepo=* --enablerepo=rhel-7-server-rpms https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm &&\
    yum install -y --disablerepo=* --enablerepo=rhel-7-server-rpms --enablerepo=epel https://aphyr.com/riemann/riemann-0.2.11-1.noarch.rpm &&\
    yum clean all

ADD riemann.config /etc/riemann/riemann.config
ADD riemann.d /etc/riemann.d

EXPOSE 5555 5556

CMD ["/usr/bin/riemann"]
