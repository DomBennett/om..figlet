# select Ubuntu Linux image
FROM ubuntu:latest
# Use the 'apt-get' system to install figlet
RUN apt-get update && apt-get install -y figlet wget
# install "contributed" fonts
RUN wget ftp://ftp.figlet.org/pub/figlet/fonts/contributed.tar.gz
RUN tar xzf contributed.tar.gz && cp -R contributed/* /usr/share/figlet && \
  rm -rf contributed && rm contributed.tar.gz
# set the working_dir/
RUN mkdir /working_dir
WORKDIR /working_dir
