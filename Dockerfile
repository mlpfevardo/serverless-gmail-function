# Docker image
FROM alpine

# Create app directory
WORKDIR /workspace/

# Install app dependencies

COPY . /workspace/

# Install any needed packages 

RUN npm install 

#deploy functions 
CMD [ "serverless", "deploy" ]
