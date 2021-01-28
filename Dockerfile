FROM gcr.io/google.com/cloudsdktool/cloud-sdk

RUN apt-get update

RUN  apt-get install -y build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl git

RUN  curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

RUN git clone git://github.com/yyuu/pyenv.git .pyenv

ENV PYENV_ROOT $HOME/.pyenv

ENV PATH $PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH

RUN pyenv install 3.8.6