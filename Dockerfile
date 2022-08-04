FROM node:10.19.0
# Imports Node     
WORKDIR /app
# Working directory becomes app
# We shall use this directory to store files, run npm, and launch our application
COPY package.json /app
#Adds the package.json file in the app dir
RUN npm install --only=production && npm cache clean --force
#Runs the production npm command and clears cache
COPY . /app
# Adds the app directory      
CMD node index.js
# Execution when the docker file is launching
EXPOSE 8081
#Expose port 8081 to the outside once the container has launched

# To build the docker file, use sudo docker build -t my-first-app .
# name of the image is the -t parameter
# make sure to add the '.'

# To run docker image, use sudo docker run -p 8081:8081 my-first-app

# use sudo docker ps
# to get the number of docker containers running

# Use the command docker exec -it <container name> /bin/bash to get a bash shell in the container
# Generically, use docker exec -it <container name> <command> to execute whatever command you specify in the container.