# This builds an image with collectd to test Riemann
FROM rhel7.1

RUN yum install -y --disablerepo=* --enablerepo=rhel-7-server-rpms https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum install -y --disablerepo=* --enablerepo=rhel-7-server-rpms --enablerepo=epel procps-ng iproute iputils net-tools tcpdump collectd collectd-write_riemann

COPY collectd.conf /etc/collectd.conf
COPY cpu.conf /etc/collectd.d/cpu.conf
COPY write_riemann.conf /etc/collectd.d/write_riemann.conf

ENTRYPOINT ["/sbin/collectd", "-f"]
