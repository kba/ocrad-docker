FROM alpine:3.4
MAINTAINER Konstantin Baierer <konstantin.baierer@gmail.com>
ENV OCRAD_VERSION 0.25
RUN apk --update add lzip wget build-base \
    && mkdir /src \
    && cd /src \
    && wget "http://download.savannah.gnu.org/releases/ocrad/ocrad-$OCRAD_VERSION.tar.lz" \
    && lzip -cd ocrad-$OCRAD_VERSION.tar.lz | tar -xf - \
    && cd ocrad-$OCRAD_VERSION \
    && ./configure && make && make install \
    && rm -rf /src \
    && apk del lzip wget
RUN mkdir /data
WORKDIR /data
ENTRYPOINT ["/usr/local/bin/ocrad"]
