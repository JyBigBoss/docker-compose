FROM node:8.13.0-stretch

#Clone https://github.com/sx1989827/DOClever.git
#Delete DOClever/Desktop
#touch config.json: {"db":"mongodb://doclever:123456@localhost:27017/DOClever","filePath":"/declever","port":10000}

COPY DOClever /root/doclever
WORKDIR /root/doclever/

VOLUME /doclever

EXPOSE 10000

CMD ["node","Server/bin/www"]
