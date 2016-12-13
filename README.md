# docker-riemann

This project provides resources for deploying Riemann in Docker on Fedora and
Red Hat Enterprise Linux.


# Base Images

- Fedora 24
- RHEL 7.2


# Requirements

Building the RHEL version of the image requires an active subscription for
Fedora and Red Hat Enterprise Linux Server.


# Building

To build the Fedora image, run:

```.shell
$ docker build -t riemann:fedora -f Dockerfile.fedora .
```

To build the RHEL image, run:

```.shell
$ docker build -t riemann:rhel -f Dockerfile.rhel .
```


# Launching Riemann

To launch Riemann, run:

```.shell
$ docker run riemann
```

# Customizing Riemann

The recommended method of customizing Riemann is to mount your own configuration
files as a volume on the container, as so:

```.shell
$ docker run -v /path/to/custom/configs:/etc/riemann/ riemann
```


# Networking

The Riemann image exposes the following ports:

* 5555 for native clients
* 5556 for websocket clients
* 2003 for the Graphite clients


# Releases


## 1.3

- Upgrade to Riemann 0.2.12.
- Upgrade Fedora image to Fedora 25.
- Upgrade RHEL image to RHEL 7.3.
- Expose port 2003 for Graphite clients.


## 1.2

- Update default Riemann configuration.
- Remove collectd test image.
- Set Riemann user and group explicitly in image.


## 1.1

- Upgrade to RHEL 7.2.
- Upgrade to Riemann 0.2.11.


## 1.0

- Initial release on RHEL 6.7 and Riemann 0.2.10.
