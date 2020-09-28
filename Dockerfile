FROM ubuntu:18.04

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y gnupg wget && \
    wget https://crawl.develz.org/debian/pubkey -O /tmp/crawl.pub && \
    apt-key add /tmp/crawl.pub && \
    apt-get update && \
    apt-get install -y crawl && \
    rm -rf \
        /var/lib/apt/lists/* \
        /tmp/* \
        /var/tmp/* \
        /usr/share/man \
        /usr/share/doc \
        /usr/share/doc-base \
        /tmp/crawl.pub

ENV TERM=xterm-256color
RUN useradd -m crawl
USER crawl

WORKDIR /home/crawl

VOLUME /home/crawl
CMD [ "/usr/games/crawl" ]