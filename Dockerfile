FROM python:3.9


ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y \
    bash \
    git \
    less \
    openssh-server \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && pip install detect-secrets

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENV REQUIRE_BASELINE=0 ADDL_ARGS="" BASELINE_FILE="./.secrets.baseline"

ENTRYPOINT ["/entrypoint.sh"]