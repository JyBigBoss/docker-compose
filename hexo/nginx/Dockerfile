FROM nginx

LABEL time="2018"   \
      name="BigBoss"  \
      version="v1"


EXPOSE 80  443

RUN rm -fr /usr/share/nginx/html/* && rm -fr /etc/nginx/conf.d/*

COPY nginx.conf  /etc/nginx/nginx.conf

VOLUME /www
