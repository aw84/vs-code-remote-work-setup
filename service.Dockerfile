FROM ubuntu:focal
USER root

ENV LANG=en_US.UTF-8
ENV LC_ALL=C.UTF-8
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=UTC

RUN apt-get update \
&& apt-get install -y openssh-server python3.8-venv python3-pip \
&& pip3 install -U pip wheel setuptools \
&& mkdir /run/sshd

ADD root_id_rsa /root/.ssh/id_rsa
ADD root_id_rsa.pub /root/.ssh/id_rsa.pub
ADD root_id_rsa.pub /root/.ssh/authorized_keys

RUN chmod 750 /root/.ssh \
&& chmod 600 /root/.ssh/authorized_keys

CMD [ "/usr/sbin/sshd", "-D" ]
