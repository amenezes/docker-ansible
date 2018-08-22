FROM python:3.7.0-alpine

LABEL maintainer="alexandre menezes <alexandre.fmenezes@gmail.com>"

RUN apk add --no-cache ansible

CMD ["ansible", "--help"]