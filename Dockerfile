FROM bitnami/minideb:stretch
RUN install_packages make git gcc byacc flex pkg-config libpng-dev ca-certificates
RUN git clone https://github.com/rednex/rgbds /opt/rgbds && make -C /opt/rgbds install && rm -fr /opt/rgbds
RUN mkdir /opt/src
WORKDIR /opt/src
CMD ["make", "all"]
