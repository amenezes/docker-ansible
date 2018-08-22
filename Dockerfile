FROM python:3.7.0-alpine

LABEL maintainer="alexandre menezes <alexandre.fmenezes@gmail.com>"

ARG ANSIBLE_VERSION=2.5.6
ARG ANSIBLE_LINT_VERSION=3.4.23

RUN apk add --no-cache make gcc libffi-dev linux-headers musl-dev openssl-dev && \
  pip install ansible-lint==$ANSIBLE_LINT_VERSION ansible==$ANSIBLE_VERSION

CMD ["ansible", "--help"]
