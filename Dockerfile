FROM n8nio/n8n:latest

USER root

# Installer les dépendances nécessaires
RUN apt-get update && apt-get install -y \
  libnss3 \
  libatk-bridge2.0-0 \
  libxss1 \
  libgtk-3-0 \
  libgbm1 \
  libasound2 \
  && rm -rf /var/lib/apt/lists/*

# Installer le plugin WhatsApp Web
RUN npm install --omit=dev n8n-nodes-whatsapp-web

USER node
