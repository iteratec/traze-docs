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

# Generate Sources
RUN mkdir traze-docs
RUN hugo new site ./traze-docs

# Copy Source Code
ADD src/ ./traze-docs/

# Perform Build
RUN git clone \
      https://github.com/aerohub/hugo-simpledoc-theme.git \
      ./traze-docs/themes/hugo-simpledoc-theme
RUN cd traze-docs && hugo

# ----------- Cut Here ------------

FROM nginx:1.13-alpine

# Copy Build Results from Builder
COPY --from=builder ./traze-docs/public/ /usr/share/nginx/html