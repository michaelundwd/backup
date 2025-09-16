########################################################################
# Nightly backup of /opt holding persistent data for docker containers #
# This version is host-independent                                     #
# More information in ReadMe                                           #
# last updated 16/09/2025                                              #
########################################################################

FROM alpine:latest

RUN mkdir /host_opt

RUN apk add --no-cache tzdata
ENV TZ="Europe/London"
RUN cp /usr/share/zoneinfo/Europe/London /etc/localtime

ENTRYPOINT ["/host_opt/backup/startup.sh"]

