FROM n8nio/n8n:latest

USER root

# Dépendances Puppeteer (nécessaires pour WhatsApp Web)
RUN apk add --no-cache \
  chromium \
  nss \
  freetype \
  harfbuzz \
  ttf-freefont \
  dumb-init \
  udev \
  bash \
  curl \
  git \
  ca-certificates \
  nodejs \
  npm

ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true

# Cloner le plugin WhatsApp Web depuis GitHub
RUN git clone https://github.com/tavo2311/n8n-nodes-whatsapp-web /usr/local/lib/node_modules/n8n-nodes-whatsapp-web

# Installer le plugin
RUN cd /usr/local/lib/node_modules/n8n-nodes-whatsapp-web && npm install --omit=dev && npm run build

USER node
