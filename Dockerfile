FROM ubuntu:24.04 as base
RUN \
apt-get update -y && \
apt-get install build-essential -y && \
apt-get install curl -y && \
apt-get install dotnet-sdk-8.0 -y && \
apt-get install tar && \
DEBIAN_FRONTEND=noninteractive apt-get install git -y
RUN git clone https://github.com/popalnicolas/github-runner.git
RUN chmod +x /github-runner/entrypoint.sh
ENTRYPOINT /github-runner/entrypoint.sh