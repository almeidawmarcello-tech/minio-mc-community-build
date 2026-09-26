FROM debian:bookworm-slim

RUN apt-get update \
    && apt-get install -y --no-install-recommends ca-certificates \
    && rm -rf /var/lib/apt/lists/*

COPY mc /usr/local/bin/mc

RUN chmod +x /usr/local/bin/mc

ENTRYPOINT ["/usr/local/bin/mc"]
