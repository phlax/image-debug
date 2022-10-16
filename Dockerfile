FROM debian:bullseye-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN echo "deb http://deb.debian.org/debian bullseye-backports main" \
         >> /etc/apt/sources.list \
    && apt-get update \
    && apt-get install --no-install-recommends -y -qq -t bullseye-backports \
        btop \
        byobu \
        curl \
        dnsutils \
        emacs-goodies-el \
        emacs-nox \
        git \
        htop \
        iputils-ping \
        jq \
        net-tools \
        nmap \
        python3-venv \
        yaml-mode
