FROM n8nio/n8n:latest

USER root

# Dépendances système minimales pour Chromium utilisé par Puppeteer
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
    ca-certificates \
    nodejs \
    npm

# Ajouter le chemin vers Chromium pour Puppeteer
ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true

# Installer le plugin WhatsApp Web
RUN npm install --omit=dev n8n-nodes-whatsapp-web

USER node
