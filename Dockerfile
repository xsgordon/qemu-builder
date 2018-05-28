FROM fedora:latest
LABEL maintainer "Stephen Gordon <sgordon@redhat.com"

RUN dnf update -y
RUN dnf install -y pixman-devel git gcc make findutils python zlib-devel glib2-devel
RUN dnf install -y flex
RUN dnf install -y bison
RUN dnf install -y ivshmem-tools

ENV HOME /root
WORKDIR $HOME

COPY build_nemu.sh /root/build_qemu.sh

CMD [ "/root/build_qemu.sh" ]
