FROM debian:9
RUN echo 'export PATH=$HOME/.roswell/bin:$PATH' >> ~/.bashrc
# Set the locale
RUN apt update && apt-get install curl make bzip2 libcurl3-gnutls locales -y
RUN sed --in-place '/en_US.UTF-8/s/^#//' /etc/locale.gen
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
ARG ROSWELL_VERSION=20.06.14.107
RUN curl -L -O https://github.com/roswell/roswell/releases/download/v${ROSWELL_VERSION}/roswell_${ROSWELL_VERSION}-1_amd64.deb && \
    dpkg -i *.deb && ros && rm *.deb
