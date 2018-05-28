FROM fedora:latest
LABEL maintainer "Stephen Gordon <sgordon@redhat.com"

RUN dnf update -y
RUN dnf install -y pixman-devel \
                   git \
                   gcc \
                   make \
                   findutils \
                   python \
                   zlib-devel \
                   glib2-devel \
                   flex \
                   bison \
                   ivshmem-tools

ENV HOME /root
WORKDIR $HOME

COPY build_qemu.sh /root/build_qemu.sh

CMD [ "/root/build_qemu.sh" ]
