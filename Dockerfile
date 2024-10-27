FROM --platform=linux/amd64 node:22.7.0-alpine

ENV MOC_VERSION=0.13.2
ENV MOPS_VERSION=1.1.1
ENV IC_WASM_VERSION=0.9.0

RUN apk add --no-cache curl
RUN update-ca-certificates

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
