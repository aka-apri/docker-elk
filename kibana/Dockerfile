ARG ELK_VERSION

# https://github.com/elastic/kibana-docker
FROM docker.elastic.co/kibana/kibana-oss:${ELK_VERSION}

ENV ELASTICSEARCH_URL=http://elasticsearch:9200

COPY config/kibana.yml /usr/share/kibana/config/kibana.yml

# Add your kibana plugins setup here
# Example: RUN kibana-plugin install <name|url>

RUN ./bin/kibana-plugin install https://github.com/sivasamyk/logtrail/releases/download/v0.1.31/logtrail-6.7.1-0.1.31.zip
COPY config/logtrail.json /usr/share/kibana/plugins/logtrail/logtrail.json