FROM pandoc/extra:latest

RUN apk add --no-cache font-twemoji && \
    tlmgr install newunicodechar

WORKDIR /data

ENTRYPOINT ["pandoc"]
