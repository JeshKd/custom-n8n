FROM n8nio/n8n:latest

USER root

# Installer les bibliothèques nécessaires à Puppeteer (pour WhatsApp Web)
RUN apk add --no-cache \
    nss \
    atk \
    at-spi2-core \
    xss \
    gtk+3.0 \
    alsa-lib \
    chromium \
    harfbuzz \
    ttf-freefont \
    nodejs \
    npm

# Installer le plugin WhatsApp Web
RUN npm install --omit=dev n8n-nodes-whatsapp-web

USER node
