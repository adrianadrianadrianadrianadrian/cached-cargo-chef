ARG BUILDIMAGE
FROM $BUILDIMAGE as deps
USER root

COPY . .
RUN cargo build --release --target=x86_64-unknown-linux-musl

FROM alpine AS runtime
COPY --from=deps /app/target/x86_64-unknown-linux-musl/release .