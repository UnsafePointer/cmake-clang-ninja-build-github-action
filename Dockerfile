FROM ubuntu:focal

RUN apt-get update -qq && \
    DEBIAN_FRONTEND=noninteractive apt-get upgrade -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y \
    ninja-build \
    gnupg \
    lsb-release \
    wget \
    software-properties-common && \
    rm -rf /var/lib/apt/lists/*

RUN wget https://apt.llvm.org/llvm.sh && \
    chmod +x llvm.sh && \
    ./llvm.sh 12 && \
    rm -rf llvm.sh

RUN wget https://cmake.org/files/v3.20/cmake-3.20.0-linux-x86_64.tar.gz && \
    tar --strip-components=1 -C /usr/local -xzf cmake-3.20.0-linux-x86_64.tar.gz && \
    rm -rf cmake-3.20.0-linux-x86_64.tar.gz

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
