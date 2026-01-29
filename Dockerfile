# Utilisation de Node.js
FROM node:20-slim

# Définition du dossier de travail
WORKDIR /app

# On installe juste les dépendances minimales pour exécuter npx
RUN apt-get update && apt-get install -y curl

# Le port utilisé par Railway
EXPOSE 3000

# Commande corrigée : 
# On utilise npx pour récupérer le serveur directement depuis le dépôt DataForSEO
# --sse : active le mode réseau
# --port 3000 : force le port pour Railway
CMD ["npx", "-y", "@dataforseo/mcp-server", "--sse", "--port", "3000"]