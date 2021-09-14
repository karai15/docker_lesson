# 使用するubuntuのバージョンを指定]
FROM ubuntu:16.04

# 使うコマンドをインストール
RUN \
    apt-get update && \
    apt-get upgrade && \
    apt-get -y install net-tools && \
    apt-get -y install iputils-ping net-tools && \
    apt-get -y install iperf  && \
    apt-get -y install iproute2  && \
    apt-get -y install traceroute
    # apt-get install x11-apps && \
    # export DISPLAY=localhost:99.0 && \
WORKDIR /opt/
# CMD ["/bin/bash"]