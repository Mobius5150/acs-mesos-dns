FROM mesosphere/mesos-dns
MAINTAINER Michael Blouin <contact@michaelblouin.ca>

EXPOSE 53

COPY config.json /config.json

CMD ["/mesos-dns", "-config=/config.json"]
