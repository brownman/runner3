FROM dockerfile/ruby
#brownman/runner2
#:latest

MAINTAINER sameer@damagehead.com


RUN sed 's/main$/main universe/' -i /etc/apt/sources.list
RUN apt-get update # 20140310



ADD assets/ /app/
RUN mv /app/.vimrc /app/.bash_aliases /root/
RUN chmod 755 /app/init /app/setup/install && /app/setup/install

ADD authorized_keys /root/.ssh/
RUN chmod 700 /root/.ssh && chmod 600 /root/.ssh/authorized_keys && chown root:root -R /root/.ssh

EXPOSE 22

ENTRYPOINT ["/app/init"]
CMD ["app:start"]
