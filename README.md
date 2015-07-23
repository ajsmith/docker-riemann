# docker-riemann

This project provides resources for deploying Riemann in Docker containers.

## Supported Platforms

RHEL6

## Dependencies

EPEL for RHEL6

## Building

Simply run:

    $ docker build -t riemann .

## Launching Riemann

Simply run:

    $ docker run -P riemann /usr/bin/riemann

## Networking

The Riemann image exposes port 5555 to accept events from clients.
