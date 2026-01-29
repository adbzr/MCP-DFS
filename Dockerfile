# On utilise une image Node.js complète pour avoir npx et les outils nécessaires
FROM node:20

# Dossier de travail
WORKDIR /app

# On force l'installation de npx au cas où
RUN npm install -g npx

# Le port pour Railway
EXPOSE 3000

# Commande magique :
# On utilise directement npx pour appeler le serveur DataForSEO.
# L'option -y accepte automatiquement l'installation temporaire.
# On passe les arguments --sse et --port requis pour le cloud.
CMD ["npx", "-y", "@dataforseo/mcp-server", "--sse", "--port", "3000"]