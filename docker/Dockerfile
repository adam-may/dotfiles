FROM buildpack-deps:trusty
MAINTAINER Adam May <adammay@gmail.com>

RUN locale-gen en_AU.UTF-8

ENV DEBIAN_FRONTEND noninteractive
ENV LANG en_AU.UTF-8
ENV LC_CTYPE en_AU.UTF-8
ENV LC_ALL en_AU.UTF-8

RUN sed -i "s/http:\/\/archive.ubuntu.com\/ubuntu\//http:\/\/mirror.internode.on.net\/pub\/ubuntu\/ubuntu\//g" /etc/apt/sources.list && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
            curl \
            git \
            tmux \
            vim \
            wget \
            zsh && \
    chsh -s /bin/zsh root

# Setup zsh, including Oh-My-Zsh
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

RUN mv /root/.zshrc /root/.zshrc.old

ADD https://raw.githubusercontent.com/adam-may/dotfiles/master/zsh/.zshrc /root
ADD https://raw.githubusercontent.com/adam-may/dotfiles/master/zsh/adammay.zsh-theme /root/.oh-my-zsh/themes

# Setup tmux
ADD https://raw.githubusercontent.com/adam-may/dotfiles/master/tmux/.tmux.conf /root

RUN git clone https://github.com/powerline/fonts.git ~/fonts
RUN ~/fonts/install.sh

# Setup vim.spf13/com
ADD https://raw.githubusercontent.com/adam-may/dotfiles/master/vim/.vimrc.before.local /root
ADD https://raw.githubusercontent.com/adam-may/dotfiles/master/vim/.vimrc.bundles.local /root
ADD https://raw.githubusercontent.com/adam-may/dotfiles/master/vim/.vimrc.local /root

RUN curl http://j.mp/spf13-vim3 -L -o - | sh

RUN vim +BundleInstall +BundleClean +qall!

CMD ["/bin/zsh"]

