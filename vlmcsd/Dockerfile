FROM alpine

ENV vlmcsd_version='svn1112'
#https://github.com/Wind4/vlmcsd/releases/download/$vlmcsd_version/binaries.tar.gz

RUN wget  -O binaries.tar.gz  https://github.com/Wind4/vlmcsd/releases/download/$vlmcsd_version/binaries.tar.gz \
 && tar zxf binaries.tar.gz \
 && cp binaries/Linux/intel/static/vlmcsd-x86-musl-static /usr/bin/vlmcsd \
 && chmod 0755 /usr/bin/vlmcsd \
 && rm -rf binaries/ binaries.tar.gz

EXPOSE 1688

ENTRYPOINT ["/usr/bin/vlmcsd", "-D", "-e"]