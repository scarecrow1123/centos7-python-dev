FROM scarecrow1123/centos7-python

WORKDIR /usr/workspace/

RUN yum install -y which tmux htop vim

CMD ["/bin/bash"]
