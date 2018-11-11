FROM alpine:latest
LABEL maintainer="Michael Durrant<junk@snap2web.com>"
RUN apk add bash git vim ruby ruby-irb
COPY alpine_bashrc /root/.bashrc
COPY .bash_functions.sh /root
COPY .bash_aliases /root
COPY .git-completion.bash /root
RUN "/bin/bash"
RUN git config --global user.name 'Michael'
RUN git config --global user.email 'no-reply@google.com'
