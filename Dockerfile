FROM n8nio/n8n:latest

USER root
WORKDIR /home/node/.n8n
RUN npm install --quiet n8n-nodes-whatsapp
USER node
WORKDIR /usr/local/lib/node_modules/n8n
