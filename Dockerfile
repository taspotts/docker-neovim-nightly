FROM debian:stretch-slim
WORKDIR /usr/src

RUN apt-get update && apt-get install --no-install-recommends -qq \
  curl git ca-certificates \
  && rm -rf /var/lib/apt/lists/*

RUN curl -fLo nvim-linux64.tar.gz https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.tar.gz \
  && tar -xvzf nvim-linux64.tar.gz \
  && mv nvim-linux64/share/* /usr/local/share/ \
  && mv nvim-linux64/bin/* /usr/local/bin/ \
  && mv nvim-linux64/lib/* /usr/local/lib/ \
  && rm -rf nvim-linux64*

RUN curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim \
  --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
