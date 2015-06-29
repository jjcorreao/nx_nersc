FROM centos:6

MAINTAINER Joaquin Correa <JoaquinCorrea@lbl.gov>

WORKDIR /usr
ADD nomachine-cloud-server-evaluation_4.6.4_14_x86_64.tar.gz /usr
RUN 'ls /usr'
#RUN 'sudo tar xvzf /usr/nomachine-cloud-server-evaluation_4.6.4_14_x86_64.tar.gz --directory /usr'
#RUN 'sudo /usr/NX/nxserver --install'

#ADD cloud.cfg /usr/NX/etc


