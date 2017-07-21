############################################################
# Dockerfile to build the SoftFIRE Middleware Container
# Based on Ubuntu
############################################################

# Set the base image to Ubuntu
FROM python:3.5

# File Author / Maintainer
MAINTAINER SoftFIRE

ARG HTTP_PORT=5080
ARG BIND_PORT=5051

ENV DEBIAN_FRONTEND noninteractive
ADD ./softfire /etc/softfire
# Update the sources list
RUN mkdir -p /var/log/softfire
RUN pip install experiment-manager

# Expose ports
EXPOSE $HTTP_PORT
EXPOSE $BIND_PORT

CMD experiment-manager
