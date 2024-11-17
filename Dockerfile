FROM --platform=linux/amd64 node:22.7.0-bookworm-slim

ENV MOC_VERSION=0.13.3
ENV MOPS_VERSION=1.1.1
ENV IC_WASM_VERSION=0.9.0

RUN apt-get -yq update &&\
  apt-get -yqq install --no-install-recommends ca-certificates curl tar &&\
  apt-get autoremove &&\
  apt-get clean

# Install mops
RUN npm i -g ic-mops@${MOPS_VERSION}

# Install ic-wasm
RUN curl -L https://github.com/dfinity/ic-wasm/releases/download/${IC_WASM_VERSION}/ic-wasm-x86_64-unknown-linux-gnu.tar.gz -o ic-wasm.tar.gz \
    && tar xzf ic-wasm.tar.gz -C /usr/local/bin \
    && rm ic-wasm.tar.gz

# Fetch and install moc directly from the specified release
RUN curl -L https://github.com/dfinity/motoko/releases/download/${MOC_VERSION}/motoko-Linux-x86_64-${MOC_VERSION}.tar.gz -o motoko.tar.gz \
    && tar xzf motoko.tar.gz -C /usr/local/bin \
    && rm motoko.tar.gz
