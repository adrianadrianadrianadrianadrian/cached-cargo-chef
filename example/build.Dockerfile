FROM clux/muslrust:stable
USER root
WORKDIR /app

RUN cargo install cargo-chef
COPY recipe.json .

RUN cargo chef cook --release --target x86_64-unknown-linux-musl --recipe-path recipe.json