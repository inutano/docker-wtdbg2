FROM debian:8.11
ENV VERSION v2.3
RUN apt-get update -y && apt-get install -y build-essential git zlib1g-dev
RUN git clone https://github.com/ruanjue/wtdbg2 /wtdbg2 && \
    cd /wtdbg2 && \
    git checkout refs/tags/${VERSION} && \
    make && \
    mv wtdbg2 /usr/local/bin && \
    mv wtpoa-cns /usr/local/bin
CMD ["bash"]

    
