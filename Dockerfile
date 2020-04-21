FROM debian:latest
RUN rm -rf /etc/localtime &&\
  ln -s /usr/share/zoneinfo/Europe/Budapest /etc/localtime &&\
  apt-get update &&\
  apt-get upgrade -y &&\
  apt-get install -y locales &&\
  echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen &&\
  locale-gen &&\
  update-locale LANG=en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_CTYPE en_US.UTF-8
ENV LANGUAGE en_US:en
