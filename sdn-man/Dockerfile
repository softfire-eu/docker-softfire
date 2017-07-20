############################################################
# Dockerfile to build the SoftFIRE Middleware Container
# Based on Ubuntu
############################################################

# Set the base image to Ubuntu
FROM python:3.5
ARG PORT
# File Author / Maintainer
MAINTAINER SoftFIRE

ENV DEBIAN_FRONTEND noninteractive
ADD ./softfire /etc/softfire
# Update the sources list
RUN mkdir -p /var/log/softfire
RUN pip install sdn-manager

# Expose ports
EXPOSE $PORT
EXPOSE 8080

CMD sdn-manager
