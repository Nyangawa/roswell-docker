FROM debian:9
RUN echo 'export PATH=$HOME/.roswell/bin:$PATH' >> ~/.bashrc
RUN apt update && apt install -y curl make bzip2 libcurl3-gnutls &&\
    curl -L -O https://github.com/roswell/roswell/releases/download/v19.3.10.97/roswell_19.3.10.97-1_amd64.deb &&\
    dpkg -i *.deb && ros && rm *.deb
