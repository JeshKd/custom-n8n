FROM ghcr.io/n8n-io/n8n:1.106.3
USER root
RUN apk add --no-cache git
RUN npm install --omit=dev https://github.com/tavo2311/n8n-nodes-whatsapp-web.git
USER node
