FROM centos:6
MAINTAINER Joaquin Correa <JoaquinCorrea@lbl.gov>
USER root
RUN yum install -y wget \
	tar

RUN yum groupinstall -y "X Window System" \
	"Desktop" \
	"Desktop Platform" \
	"Fonts" \
	"General Purpose Desktop"

RUN wget http://download.nomachine.com/download/4.6/Linux/nomachine-cloud-server-evaluation_4.6.4_14_x86_64.tar.gz -P /tmp \
	&& tar -zxvf /tmp/nomachine-cloud-server-evaluation_4.6.4_14_x86_64.tar.gz -C /usr \
	&& /usr/NX/nxserver --install \
	&& rm /tmp/nomachine-cloud-server-evaluation_4.6.4_14_x86_64.tar.gz

EXPOSE 80 443 4080 4443 4000
CMD ["/usr/NX/scripts/init/nxserver","start"]
