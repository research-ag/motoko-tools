# Motoko tools Docker image

This repository provides a Docker image containing essential tools for developing and building projects using the Motoko programming language on the Internet Computer. This image is optimized for creating reproducible builds and is available in multiple versions based on the Motoko compiler version.

## Image overview

The Docker image is built on node:22.7.0-bookworm-slim and includes the following components:

- [moc](https://github.com/dfinity/motoko)
- [mops](https://github.com/ZenVoich/mops)
- [ic-wasm](https://github.com/dfinity/ic-wasm)

## Available versions

| Tag                  | Versions                           |
|----------------------|------------------------------------|
| `moc-0.13.0`         | moc: 0.13.0, mops: 0.45.3, ic-wasm: 0.8.1 |
| `moc-0.12.0`         | moc: 0.12.0, mops: 0.45.3, ic-wasm: 0.8.1 |
| `moc-0.11.3`         | moc: 0.11.3, mops: 0.45.3, ic-wasm: 0.8.1 |
| `moc-0.11.2`         | moc: 0.11.2, mops: 0.45.3, ic-wasm: 0.8.1 |
| `moc-0.11.1`         | moc: 0.11.1, mops: 0.45.3, ic-wasm: 0.8.1 |