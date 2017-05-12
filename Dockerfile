FROM debian:jessie-slim
RUN apt update && apt install -y curl make bzip2 &&\
    curl -L -O https://github.com/roswell/roswell/releases/download/v17.4.8.76/roswell_17.4.8.76-1_amd64.deb &&\ 
    dpkg -i roswell_17.4.8.76-1_amd64.deb && ros && rm roswell_17.4.8.76-1_amd64.deb
