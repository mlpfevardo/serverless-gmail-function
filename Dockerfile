# Docker image
FROM alpine

# Create app directory
WORKDIR /serverless_app

# Install app dependencies

COPY . /serverless_app

# Install any needed packages 

RUN npm install 

#deploy functions 
CMD [ "serverless", "deploy" ]
