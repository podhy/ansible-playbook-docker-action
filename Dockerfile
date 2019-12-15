FROM pinkrobin/docker-ansible-alpine:2.8.5-3.10.3-py2.7

MAINTAINER Patrick Pötz <devops@wastebox.biz>

RUN apk add rsync

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
