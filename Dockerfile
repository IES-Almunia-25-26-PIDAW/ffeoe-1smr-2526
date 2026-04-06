FROM pandoc/extra:latest

# Instalar Node.js, Chromium, mermaid-filter y fuente emoji
RUN apk add --no-cache nodejs npm chromium font-twemoji tlmgr install newunicodechar

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser

RUN npm install -g mermaid-filter

# Config de Puppeteer para ejecutar Chromium como root (sin sandbox)
RUN echo '{"args":["--no-sandbox","--disable-setuid-sandbox"]}' > /puppeteer.json
ENV MERMAID_FILTER_PUPPETEER_CONFIG=/puppeteer.json

WORKDIR /data

ENTRYPOINT ["pandoc"]
