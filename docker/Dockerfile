FROM ubuntu
MAINTAINER Adam May <adammay@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN sed -i "s/http:\/\/archive.ubuntu.com\/ubuntu\//http:\/\/mirror.internode.on.net\/pub\/ubuntu\/ubuntu\//g" /etc/apt/sources.list && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
            curl \
            git \
            tmux \
            wget \
            zsh && \
    chsh -s /bin/zsh root

RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

RUN mv /root/.zshrc /root/.zshrc.old

ADD https://raw.githubusercontent.com/adam-may/dotfiles/master/zsh/.zshrc /root
ADD https://raw.githubusercontent.com/adam-may/dotfiles/master/zsh/adammay.zsh-theme /root/.oh-my-zsh/themes

ADD https://raw.githubusercontent.com/adam-may/dotfiles/master/tmux/.tmux.conf /root

CMD ["/bin/zsh"]

