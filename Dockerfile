FROM centos:centos6

RUN yum -y update; yum clean all
RUN yum -y install epel-release; yum clean all

RUN yum -y install openssh-server
RUN yum -y install net-tools yum-utils
RUN /sbin/ifconfig

RUN mkdir -p /home/repos
COPY syncer /home/repos
RUN chmod +x /home/repos/syncer

RUN @echo "Now attach to this container and run:"
RUN @echo "    # /home/repos/syncer"

CMD ["/bin/bash"]
