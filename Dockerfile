FROM ubuntu:latest

RUN apt-get update && apt-get install --no-install-recommends -y \
    build-essential \
    ca-certificates \
    ctags \
    curl \
    gcc \
    git \
    ipython \
    ipython-notebook \
    libc6-dev \
    libxml2-dev \
    locales \
    make \
    man-db \
    mercurial \
    procps \
    python \
    python-dev \
    python-matplotlib \
    python-numpy \
    python-pandas \
    python-pip \
    ssh \
    tmux \
    tree \
    vim \
    zsh

RUN chsh -s /usr/bin/zsh

RUN dpkg-reconfigure locales
RUN locale-gen en_US.UTF-8
RUN /usr/sbin/update-locale LANG=en_US.UTF-8

# Install java

RUN apt-get install -y python-software-properties software-properties-common
RUN add-apt-repository -y ppa:webupd8team/java
RUN apt-get update
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
RUN apt-get install -y oracle-java7-installer
RUN apt-get install -y oracle-java7-set-default

# For ipython notebook
ENV IPN_PORT 80
EXPOSE 80
# TODO : make an alias for ipython notebook
# CMD ipython notebook --pylab=inline --ip=* --port=80 --MappingKernelManager.time_to_dead=10 --MappingKernelManager.first_beat=3

# Go
RUN curl -s https://go.googlecode.com/files/go1.2.1.linux-amd64.tar.gz | tar -v -C /usr/local -xz

ENV GOPATH /go
ENV GOROOT /usr/local/go
ENV PATH $PATH:/usr/local/go/bin:/go/bin
ENV HOME /root
ENV LC_ALL en_US.UTF-8
ENV TERM xterm-256color

ADD . /root/.dotfiles

RUN ln -s /root/.dotfiles/vim /root/.vim && \
    ln -s /root/.dotfiles/vimrc /root/.vimrc && \
    ln -s /root/.dotfiles/tmux.conf /root/.tmux.conf && \
    ln -s /root/.dotfiles/git/gitconfig /root/.gitconfig && \
    ln -s /root/.dotfiles/zsh/oh-my-zsh /root/.oh-my-zsh && \
    ln -s /root/.dotfiles/zsh/zshrc /root/.zshrc && \
    ln -s /.dockerinit /usr/local/bin/docker

RUN mkdir /root/.ssh && ln -s /root/.dotfiles/sshconfig /root/.ssh/config

WORKDIR /root
VOLUME /root/work
ENTRYPOINT ["tmux"]
