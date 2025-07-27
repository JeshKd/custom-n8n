FROM n8nio/n8n:latest

USER root
RUN apk add --no-cache git
RUN npm install --omit=dev https://github.com/tavo2311/n8n-nodes-whatsapp-web.git
USER node
