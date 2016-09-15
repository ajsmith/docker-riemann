# This builds an image with collectd to test Riemann
FROM rhel7.2

RUN yum install -y --disablerepo=* --enablerepo=rhel-7-server-rpms https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum install -y --disablerepo=* --enablerepo=rhel-7-server-rpms --enablerepo=epel procps-ng iproute iputils net-tools tcpdump collectd collectd-write_riemann

COPY collectd.conf /etc/collectd.conf
COPY collectd.d /etc/collectd.d

ENTRYPOINT ["/sbin/collectd", "-f"]
