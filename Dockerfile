FROM ekidd/rust-musl-builder:latest

RUN sudo apt-get update -y
RUN sudo apt-get install -y libclang-dev
RUN sudo apt-get install -y clang

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
