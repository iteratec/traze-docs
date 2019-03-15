FROM debian:buster-slim as builder

# Install Build Tools
RUN apt-get -qq update
RUN DEBIAN_FRONTEND=noninteractive apt-get -qq install \
      -y --no-install-recommends \
      python-pygments \
      git \
      ca-certificates \
      asciidoc \
      hugo
RUN mkdir traze-docs
ADD src/ ./traze-docs/
RUN cd traze-docs && hugo

# ----------- Cut Here ------------

FROM nginx:1.15-alpine

# Copy Build Results from Builder
COPY --from=builder ./traze-docs/public/ /usr/share/nginx/html


