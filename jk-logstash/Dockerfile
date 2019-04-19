ARG ELK_VERSION

FROM docker.elastic.co/logstash/logstash-oss:6.4.1

COPY logstash.yml /usr/share/logstash/config/
COPY logstash.conf /usr/share/logstash/pipeline/

ENV ELASTICSEARCH_HOST=elasticsearch \
    ELASTICSEARCH_PORT=9200 \
    INPUT_TCP_PORT=5050 \
    INPUT_UDP_PORT=5050 \
    INPUT_HTTP_PORT=5051 \
    LOGSTASH_DEBUG=false

CMD logstash -f /usr/share/logstash/pipeline/logstash.conf
