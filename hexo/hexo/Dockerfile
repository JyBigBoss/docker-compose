FROM centos:7
ENV LANG C.UTF-8

LABEL sanhe=bigboss 

WORKDIR /opt/hexo

RUN yum install -y  epel-release \
    && yum install -y nodejs \
    && npm config set registry https://registry.npm.taobao.org \
    && npm install hexo-cli -g \  
    && hexo init blog \ 
    && cd blog \
    && npm install 

WORKDIR /opt/hexo/blog
EXPOSE 4000
VOLUME /opt/hexo/blog

ENTRYPOINT ["hexo","server"]

