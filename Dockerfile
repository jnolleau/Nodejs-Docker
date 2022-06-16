ARG NODE_VERSION
FROM node:${NODE_VERSION}

WORKDIR /usr/src/app
# COPY package*.json ./

# RUN npm install --location=global npm
# RUN npm install
# RUN vue upgrade


## Ressource pour installer un nouveau projet vue.js
# npm install -g @vue/cli
# vue create .
# vue upgrade