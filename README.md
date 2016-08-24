# docker-riemann

This project provides resources for deploying Riemann in Docker on Fedora and
Red Hat Enterprise Linux.

## Base Images

- Fedora 24
- RHEL 7.2

# Requirements

Building the RHEL version of the image requires an active subscription for
Fedora and Red Hat Enterprise Linux Server.

## Building

To build the Fedora image, run:

```.shell
$ docker build -t riemann:fedora -f Dockerfile.fedora .
```

To build the RHEL image, run:

```.shell
$ docker build -t riemann:rhel -f Dockerfile.rhel .
```

## Launching Riemann

To launch Riemann, run:

```.shell
$ docker run riemann
```

## Graphite Forwarding

To enable Graphite forwarding, copy the graphite configuration file from the
"optional" directory and rebuild the image:

```.shell
$ cp optional/graphite.clj riemann.d/
$ docker build -t riemann-graphite .
```

This image expects to communicate with the Graphite host using the hostname
"graphite". If Graphite is running as another container, you could link Riemann
as so:

```.shell
$ docker run -d --link graphite:graphite --name riemann-graphite riemann-graphite
```

## InfluxDB Forwarding

To enable InfluxDB forwarding, copy the InfluxDB configuration file from the
"optional" directory and rebuild the image:

```.shell
$ cp optional/influxdb.clj riemann.d/
$ docker build -t riemann-influxdb .
```

This image expects to communicate with the InfluxDB host using the hostname
"influxdb". If InfluxDB is running as another container, you could link Riemann
as so:

```.shell
$ docker run -d --link influxdb:influxdb --name riemann-influxdb riemann-influxdb
```

## Networking

The Riemann image exposes port 5555 for client connections and port 5556 for
websockets.

## Releases

### v1.1.0

- Upgrade to RHEL 7.2.
- Upgrade to Riemann

### v1.0.0

- Initial release on RHEL 6.7 and Riemann 0.2.10.
