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
ADD ./softfire/start.sh start.sh
# Update the sources list
RUN mkdir -p /var/log/softfire ; chmod +x start.sh
RUN pip install nfv-manager

# Expose ports
EXPOSE $PORT

CMD ./start.sh
