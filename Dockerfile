FROM n8nio/n8n:latest
USER root
RUN npm install n8n-nodes-whatsapp
USER node
