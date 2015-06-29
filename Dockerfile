FROM centos:6

MAINTAINER Joaquin Correa <JoaquinCorrea@lbl.gov>

WORKDIR /usr
ADD nomachine-cloud-server-evaluation_4.6.4_14_x86_64.tar.gz $WORKDIR
RUN sudo tar xvzf $WORKDIR/nomachine-cloud-server-evaluation_4.6.4_14_x86_64.tar.gz --directory $WORKDIR
RUN sudo $WORKDIR/NX/nxserver --install

#ADD cloud.cfg /usr/NX/etc


