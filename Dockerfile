FROM scarecrow1123/centos7-python

ENV TERM xterm-256color

WORKDIR /usr/workspace/

RUN yum install -y which tmux htop vim man && \
    echo "alias tmux='tmux -u'" >> ~/.bashrc && \
    echo 'set -g default-terminal "screen-256color"' >> ~/.tmux.conf && \
    echo "source ~/.bashrc" >> ~/.profile

CMD ["/bin/bash", "-l"]
