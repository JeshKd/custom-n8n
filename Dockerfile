FROM n8nio/n8n:latest

USER root

# Installer git pour cloner un repo
RUN apk add --no-cache git

# Cloner le plugin WhatsApp Web (repo public, sans auth)
RUN git clone --depth=1 https://github.com/tavo2311/n8n-nodes-whatsapp-web.git /usr/local/lib/node_modules/n8n-nodes-whatsapp-web

# Revenir à l'utilisateur node (comme recommandé par n8n)
USER node
