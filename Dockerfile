FROM ubuntu:14.04
RUN export DEBIAN_FRONTEND=noninteractive && apt-get update && apt-get install -yq rng-tools haveged && apt-get clean
ENTRYPOINT ["haveged"]
CMD ["-F"]
