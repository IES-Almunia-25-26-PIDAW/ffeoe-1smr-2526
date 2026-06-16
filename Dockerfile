FROM pandoc/extra:3.10-debian

RUN apt-get update 
RUN apt install fonts-noto-color-emoji
RUN tlmgr update --self
RUN tlmgr install newunicodechar

WORKDIR /data

ENTRYPOINT ["pandoc"]    
