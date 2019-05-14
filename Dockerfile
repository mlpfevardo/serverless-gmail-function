# Docker image
FROM node:10

# Create app directory
WORKDIR /serverless/app

# Install app dependencies
ADD package.json package*.json ./

RUN npm install -g serverless

RUN npm install 

ADD . .

RUN serverless deploy
 
