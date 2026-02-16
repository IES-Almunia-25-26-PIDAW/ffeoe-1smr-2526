FROM pandoc/extra:latest

WORKDIR /data

ENTRYPOINT ["pandoc"]
