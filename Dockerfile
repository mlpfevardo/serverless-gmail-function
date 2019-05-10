# Docker image
FROM ubuntu

RUN apt-get q update && apt-get install -qqy curl
# Create app directory
WORKDIR /workspace/

# Install app dependencies

COPY . /workspace/

# Install any needed packages 

RUN npm install 

#deploy functions 
CMD [ "serverless", "deploy" ]
