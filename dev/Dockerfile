FROM opensuse/leap:latest

WORKDIR /projects

RUN zypper --non-interactive in make gcc autoconf automake 

# linuxrc
RUN zypper --non-interactive in e2fsprogs-devel hwinfo-devel libblkid-devel libcurl-devel readline-devel libmediacheck-devel

# mksusecd can't build now
RUN zypper --non-interactive in git
