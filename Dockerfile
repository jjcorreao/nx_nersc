FROM centos:6

MAINTAINER Joaquin Correa <JoaquinCorrea@lbl.gov>

#RUN wget http://download.redis.io/releases/redis-3.0.2.tar.gz \
#	&& tar -zxvf redis-3.0.2.tar.gz
#RUN tar -zxvf /usr/nomachine-cloud-server-evaluation_4.6.4_14_x86_64.tar.gz -C /usr \
#	&& /usr/NX/nxserver --install 

RUN yum install -y wget tar

RUN yum groupinstall -y "X Window System" "Desktop"

RUN wget http://download.nomachine.com/download/4.6/Linux/nomachine-cloud-server-evaluation_4.6.4_14_x86_64.tar.gz -P /tmp \
	&& tar -zxvf /tmp/nomachine-cloud-server-evaluation_4.6.4_14_x86_64.tar.gz -C /usr \
	&& /usr/NX/nxserver --install \
	&& rm /tmp/nomachine-cloud-server-evaluation_4.6.4_14_x86_64.tar.gz

#RUN 'ls /usr'
#RUN tar -zxvf /usr/nomachine-cloud-server-evaluation_4.6.4_14_x86_64.tar.gz -C /usr
#RUN 'sudo /usr/NX/nxserver --install'

#ADD cloud.cfg /usr/NX/etc

EXPOSE 80 443 4080 4443 4000
