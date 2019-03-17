FROM debian:stable
LABEL maintainer="Daniel Jensen"
RUN apt-get update -y -qq && apt-get upgrade -y -qq
RUN apt-get install zsh sudo man vim -y -qqq
RUN echo testenv > /etc/hostname

ARG UID=1000
RUN useradd -m daniel -s $(which zsh) -u ${UID} && usermod -aG sudo daniel
COPY --chown=root:root ./sudoers /etc/sudoers
USER daniel
RUN mkdir /home/daniel/testenv
WORKDIR /home/daniel/testenv
CMD zsh