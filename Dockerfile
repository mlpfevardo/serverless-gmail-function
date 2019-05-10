# Docker image
FROM ubuntu:16.04

RUN apt-get update && apt-get install -qqy curl
# Create app directory
WORKDIR /workspace/

# Install app dependencies

COPY . /workspace/

# Install any needed packages 

RUN npm install 

#deploy functions 
CMD [ "serverless", "deploy" ]
