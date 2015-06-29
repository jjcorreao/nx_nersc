FROM ubuntu:6

MAINTAINER Joaquin Correa <JoaquinCorrea@lbl.gov>

ADD nomachine-cloud-server-evaluation_4.6.4_14_x86_64.tar.gz /usr
RUN 'cd /usr ; sudo tar xvzf nomachine-cloud-server-evaluation_4.6.4_14_x86_64.tar.gz'
RUN sudo /usr/NX/nxserver --install

ADD cloud.cfg /usr/NX/etc

