FROM node:alpine

# Create app directory
WORKDIR /usr/src/app

# Bundle app source
COPY . .

# open port 9000
EXPOSE 9000

# start server
CMD [ "npm", "start" ]