#get base image from docker hub
FROM node:21-alpine
#Set working directory in the container
WORKDIR /usr/src/app
#copy packages content into the container
COPY package*.json ./
#Install all needed dependency
RUN npm install
#copy rest of files in to container
COPY . .
#Expose the port on which your node.js app run
EXPOSE 3000
#command to run nojes application 
CMD [ "npm", "start" ]

