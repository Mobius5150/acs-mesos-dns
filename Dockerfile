FROM mesosphere/mesos-dns
MAINTAINER Michael Blouin <contact@michaelblouin.ca>

COPY config.js /config.js

CMD ["/mesos-dns", "-config=/config.json""]
