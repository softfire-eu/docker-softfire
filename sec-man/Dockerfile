############################################################
# Dockerfile to build the SoftFIRE Middleware Container
# Based on Ubuntu
############################################################

# Set the base image to Ubuntu
FROM python:3.5
ARG PORT=5056
# File Author / Maintainer
MAINTAINER SoftFIRE

ENV DEBIAN_FRONTEND noninteractive
ADD ./softfire /etc/softfire
# Update the sources list
RUN mkdir -p /var/log/softfire
# TODO remove bottle, beaker
RUN pip install bottle beaker security-manager

# Expose ports
EXPOSE $PORT

CMD security-manager
