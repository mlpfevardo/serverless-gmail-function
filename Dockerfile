# Docker image
FROM ubuntu:16.04

RUN apt-get update && apt-get install -y nodejs
# Create app directory
WORKDIR /workspace/

# Install app dependencies

COPY . /workspace/
 
