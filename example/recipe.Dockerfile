FROM clux/muslrust:stable
USER root
WORKDIR /plan

RUN cargo install cargo-chef

COPY . .
RUN cargo chef prepare --recipe-path recipe.json