FROM ekidd/rust-musl-builder:latest

ARG SCCACHE_VERSION="0.2.15"

RUN sudo apt-get update -y
RUN sudo apt-get install -y libclang-dev
RUN sudo apt-get install -y clang
RUN curl -L "https://github.com/mozilla/sccache/releases/download/v$SCCACHE_VERSION/sccache-v$SCCACHE_VERSION-x86_64-unknown-linux-musl.tar.gz" -o sccache.tar.gz && tar -xvf sccache.tar.gz && sudo cp sccache-v$SCCACHE_VERSION-x86_64-unknown-linux-musl/sccache /usr/bin/sccache && sudo chmod +x /usr/bin/sccache

COPY entrypoint.sh /entrypoint.sh

USER root

ENTRYPOINT ["/entrypoint.sh"]
