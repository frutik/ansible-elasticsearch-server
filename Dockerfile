FROM docker.elastic.co/elasticsearch/elasticsearch:5.6.10

EXPOSE 9200 9300

ADD docker/elasticsearch/elasticsearch.yml /usr/share/elasticsearch/config/
#ADD docker/elasticsearch/jvm.options /usr/share/elasticsearch/config/

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install discovery-gce

COPY app/services/search_services/groovy/* /usr/share/elasticsearch/scripts/

USER elasticsearch
