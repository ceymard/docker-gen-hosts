FROM jwilder/docker-gen:0.7.3

RUN apk add --update bash && rm -rf /var/cache/apk/*

ADD ./script.sh /script.sh
ADD ./hostfile.tmpl /hostfile.tmpl
RUN chmod a+x /script.sh

VOLUME /generated_hostfile

CMD ["-notify=/script.sh", "-watch", "/hostfile.tmpl", "/hostfile"]
