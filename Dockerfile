FROM ubuntu:20.04

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install vim
RUN apt-get -y install git
RUN apt-get -y install ripgrep
RUN apt-get -y install curl

RUN curl -fLo /root/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

RUN apt install -y powerline

COPY vim/vimrc /root/.vimrc
COPY vim/ommonokai.vim /root/.vim/colors/ommonokai.vim
RUN vim +'PlugInstall --sync' +qa

