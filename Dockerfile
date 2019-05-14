# Docker image
FROM node:10

# Create app directory
WORKDIR /workspace/

# Install app dependencies

ADD package.json package*.json ./

RUN npm install -g serverless

RUN npm install --only production

RUN serverless deploy
 
