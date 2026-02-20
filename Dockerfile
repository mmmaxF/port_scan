FROM kalilinux/kali-rolling:latest

ENV DEBIAN_FRONTEND=noninteractive
SHELL ["/bin/bash", "-lc"]

# まずは更新 + 最小ツール類 +（任意で）kali metapackage
RUN apt-get update \
 && apt-get -y full-upgrade \
 && apt-get -y install --no-install-recommends \
      ca-certificates curl wget git vim less procps \
      iproute2 iputils-ping net-tools dnsutils tcpdump \
      nmap \
 && apt-get -y install --no-install-recommends kali-linux-headless \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /work
CMD ["/bin/bash"]