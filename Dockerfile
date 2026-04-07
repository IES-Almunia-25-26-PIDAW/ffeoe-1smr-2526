FROM pandoc/extra:latest

RUN apk add --no-cache font-twemoji && \
    TLVER=$(tlmgr version 2>/dev/null | grep 'version' | grep -oE '[0-9]{4}') && \
    tlmgr option repository "https://ftp.math.utah.edu/pub/tex/historic/systems/texlive/${TLVER}/tlnet-final/" && \
    tlmgr install newunicodechar

WORKDIR /data

ENTRYPOINT ["pandoc"]
