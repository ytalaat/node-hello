FROM node:alpine

# Create app directory
WORKDIR /usr/src/app

# Bundle app source
COPY . .

# open port 8000
EXPOSE 8000

# start server
CMD [ "npm", "start" ]