# Utilisation de Node.js (version légère)
FROM node:20-slim

# Définition du dossier de travail
WORKDIR /app

# INSTALLATION DU SERVEUR MCP DATAFORSEO
# On installe le package spécifique à DataForSEO
RUN npm install -g @dataforseo/mcp-server

# Le port par défaut utilisé par Railway
EXPOSE 3000

# Commande pour lancer le serveur
# --sse : Active le mode réseau (Server-Sent Events) pour n8n
# --port 3000 : Force le port pour Railway
CMD ["npx", "-y", "@dataforseo/mcp-server", "--sse", "--port", "3000"]