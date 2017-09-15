FROM fluent/fluentd:v0.12.40
MAINTAINER Presslabs ping@presslabs.com

RUN apk update \
    && apk upgrade \
    && apk add --no-cache --virtual .build-deps \
        build-base \
        ruby-dev \
    && gem install fluent-plugin-bigquery --no-ri --no-rdoc -V \
    && rm -rf /var/cache/apk/* \
    && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem

COPY bigquery.conf /fluentd/plugins/
