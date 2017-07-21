############################################################
# Dockerfile to build the SoftFIRE Middleware Container
# Based on Ubuntu
############################################################

# Set the base image to Ubuntu
FROM python:3.5
ARG PORT=5052
# File Author / Maintainer
MAINTAINER SoftFIRE

ENV DEBIAN_FRONTEND noninteractive
ADD ./softfire /etc/softfire
# Update the sources list
RUN mkdir -p /var/log/softfire
RUN pip install python-neutronclient monitoring-manager

# Expose ports
EXPOSE $PORT

CMD monitoring-manager
