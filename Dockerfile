FROM node:alpine

# Create app directory
WORKDIR /usr/src/app

# Bundle app source
COPY . .

# open port 7000
EXPOSE 7000

# start server
CMD [ "npm", "start" ]