FROM rhel6.7

RUN yum install -y --disablerepo=* --enablerepo=rhel-6-server-rpms https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm
RUN yum install -y --disablerepo=* --enablerepo=rhel-6-server-rpms --enablerepo=epel https://aphyr.com/riemann/riemann-0.2.10-1.noarch.rpm

COPY riemann.conf /etc/riemann.conf
COPY riemann.d /etc/riemann.d

EXPOSE 5555

ENTRYPOINT ["/usr/bin/riemann"]
