# apcjs container
#
# container running node.js web app for controlling apc pdu from a web page
#
# VERSION 0.1

FROM ubuntu

MAINTAINER Will Smith, wsmith85@gmail.com

RUN echo deb "http://us-west-1.ec2.archive.ubuntu.com/ubuntu/ precise main universe" > /etc/apt/sources.list
RUN apt-get update

# Install require packages to enable adding node repo and downloading code
RUN apt-get install -y git python-software-properties python g++ make
# Add node repo
RUN add-apt-repository ppa:chris-lea/node.js
RUN apt-get update
# Install node.js
RUN apt-get install -y nodejs
# Download application code
RUN git clone https://github.com/wsmith85/apcjs.git /usr/local/apcjs

# Run web server. currently hard coded to use 'apc' as host name of apc pdu
CMD ["/usr/bin/node", "/usr/local/apcjs/apcwebjs/apcwebserver/app.js"]

EXPOSE 3000
