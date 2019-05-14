# Docker image
FROM node:10

# Create app directory
WORKDIR /workspace/

# Install app dependencies

COPY package.json package*.json ./

RUN npm install -g serverless

RUN npm install --only production

COPY ..

RUN serverless deploy
 
