# cern/slc6-base:20160405 is latest Scientific Linux 6.7 image from CERN
FROM cern/slc6-base:20160405


# install docker-io package
RUN yum install -y docker-io

# docker/iptables depends on this
RUN /bin/bash -c " \
    mkdir -p /lib/modules/`uname -r` && \
    depmod -a \
    "

CMD /bin/bash


## build
# docker build -t jmfee-usgs/docker-in-sl6:latest .

## run
# docker run -it --privileged --rm jmfee-usgs/docker-in-sl6:latest /bin/bash
# service docker start
# docker ps
