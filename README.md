# docker_11_2018_bashful_bash

A Docker setup for an alpine image 
similar to my personal Ubuntu setup
with bash and git and vim
with great aliases and handy functions

The Dockerfile (as of 11/10/2018)
`
FROM alpine:latest
LABEL maintainer="Michael Durrant<junk@snap2web.com>"
RUN apk add bash git vim
COPY alpine_bashrc /root/.bashrc
COPY .bash_functions.sh /root
COPY .bash_aliases /root
COPY .git-completion.bash /root
RUN "/bin/bash"
RUN git config --global user.name 'Michael'
RUN git config --global user.email 'no-reply@google.com'
`
