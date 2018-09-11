FROM node:10

RUN apt-get update \
    && apt-get install apt-transport-https software-properties-common ca-certificates curl zip python-pip libpython-dev python-dev -y --no-install-recommends \
    && curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - \
    && add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian jessie stable" \
    && apt-get update \
    && apt-get install docker-ce -y