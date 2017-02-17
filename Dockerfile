FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.3.3

RUN gem install gx --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["gx-publish"]
CMD ["--help"]
