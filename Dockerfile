# Utilisation de Node.js
FROM node:20-slim

# Définition du dossier de travail
WORKDIR /app

# Installation du serveur MCP DataForSEO globalement
RUN npm install -g @brightdata/mcp-server

# Exposition du port (Railway utilise le port 3000 par défaut)
EXPOSE 3000

# Commande pour lancer le serveur en mode SSE (Server-Sent Events)
# On utilise les variables d'environnement pour l'auth
CMD ["npx", "-y", "@dataforseo/mcp-server", "--sse"]