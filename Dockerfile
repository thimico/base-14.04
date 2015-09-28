# Base Dockerfile for all IMAGES
FROM ubuntu:14.04

# MISE A JOUR DISTRIBUTION ET INSTALLATION OPEN-SSH
RUN apt-get update && apt-get install -y vim openssh-server curl expect netcat

# CREATION DES REPERTOIRES POUR LES ARCHIVES DES PROGRAMMES

RUN mkdir -p /ambiente/java /ambiente/scripts /ambiente/binaries /ambiente/tmp /ambiente/tools /ambiente/appconf /ambiente/software /var/run/sshd

# VARIABLES ENVIRONNEMENTS

ENV TM_JAVA /ambiente/java
ENV TM_SCRIPTS /ambiente/scripts
ENV TM_USER_HOME /ambiente/

RUN echo -n "TM_JAVA=$TM_JAVA\nTM_SCRIPTS=$TM_SCRIPTS\nTM_USER_HOME=$TM_USER_HOME\n" >> /etc/environment

