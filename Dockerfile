FROM debian:9
RUN echo 'export PATH=$HOME/.roswell/bin:$PATH' >> ~/.bashrc
# Set the locale
RUN apt-get install locales -y
RUN sed --in-place '/en_US.UTF-8/s/^#//' /etc/locale.gen
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
RUN apt update && apt install -y curl make bzip2 libcurl3-gnutls
RUN curl -L -O https://github.com/roswell/roswell/releases/download/v19.3.10.97/roswell_19.3.10.97-1_amd64.deb && \
    dpkg -i *.deb && ros && rm *.deb
    
