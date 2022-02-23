# Latest version of node as bash image
FROM node:latest

# Expose the port that is used in server file
EXPOSE 3000

# The working directory is used to creat the directory and it will creat location inside container as working directory.
WORKDIR /uv/nodeapp

# We want to run our server file in production mode
ENV ENV_NODE = production

# It will copy the .json file from local directory to container directory
COPY package.json package-lock.json* ./

# To run server file we need to install npm inside container directory
RUN npm install --production

# It will copy all the from local directory to container directory
COPY . .

# Start node with its default content 
ENTRYPOINT [ "node" ] 

# It will run the server file
CMD ["server.js" ]
