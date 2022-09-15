ARG VERSION=unspecified

FROM debian:11

ARG VERSION

# For a list of pre-defined annotation keys and value types see:
# https://github.com/opencontainers/image-spec/blob/master/annotations.md
# Note: Additional labels are added by the build workflow.
#LABEL org.opencontainers.image.authors="mark.feldhousen@cisa.dhs.gov"
#LABEL org.opencontainers.image.vendor="Cybersecurity and Infrastructure Security Agency"

RUN apt-get update
RUN apt-get install -y libfreetype6 default-jdk
RUN apt-get install -y curl
