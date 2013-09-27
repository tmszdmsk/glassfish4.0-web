# ubuntu 12.04 is a LongTermSupport edition which will bu supported till 2017
FROM ubuntu:12.04

MAINTAINER Tomasz Adamski "tomasz.adamski@gmail.com"

# INITIAL UPDATE
RUN apt-get update
RUN apt-get upgrade

#######################
# JAVA 7 INSTALLATION #
#######################
RUN echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" >> /etc/apt/sources.list
RUN apt-get update
RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN apt-get install oracle-java7-installer -y --force-yes

##########################
# GLASSFISH INSTALLATION #
##########################
RUN wget http://download.java.net/glassfish/4.0/release/glassfish-4.0-web.zip -P /opt/
RUN apt-get install unzip -y
RUN unzip /opt/glassfish-4.0-web.zip -d /opt/
RUN rm /opt/glassfish-4.0-web.zip

