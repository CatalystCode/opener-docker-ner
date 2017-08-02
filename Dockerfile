FROM jruby:9-alpine
MAINTAINER Clemens Wolff <clewolff@microsoft.com>

RUN apk add --no-cache gcc g++ make libarchive-dev python py-pip
RUN apk add --no-cache libxml2-dev libxslt-dev python-dev
RUN apk add --no-cache perl
RUN rm -rf /var/lib/apt/lists/*

RUN pip install lxml

RUN gem install opener-ner

EXPOSE 80
CMD ["/usr/local/bin/ruby", "/usr/local/bundle/bin/ner-server", "-p", "80"]
