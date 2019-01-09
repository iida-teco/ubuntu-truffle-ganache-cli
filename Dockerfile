FROM ubuntu:18.04

SHELL ["/bin/bash", "-c"]

RUN \
    apt-get update -y && \
    apt-get upgrade -y && \
    apt install build-essential python curl git -y && \
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash && \
    export NVM_DIR="$HOME/.nvm" && \
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && \
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" && \
    nvm install node && \
    npm install -g npm && \
    npm install -g truffle@v4 ganache-cli

ENV HOST 0.0.0.0
