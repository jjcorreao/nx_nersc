FROM centos:6

MAINTAINER Joaquin Correa <JoaquinCorrea@lbl.gov>

WORKDIR /usr
ADD nomachine-cloud-server-evaluation_4.6.4_14_x86_64.tar.gz /usr
RUN wget http://download.redis.io/releases/redis-3.0.2.tar.gz \
	&& tar -zxvf redis-3.0.2.tar.gz
#RUN 'ls /usr'
#RUN tar -zxvf /usr/nomachine-cloud-server-evaluation_4.6.4_14_x86_64.tar.gz -C /usr
#RUN 'sudo /usr/NX/nxserver --install'

#ADD cloud.cfg /usr/NX/etc


