FROM node:alpine

# Create app directory
WORKDIR /usr/src/app

# Bundle app source
COPY . .



# open port 3000
EXPOSE 3000


# start server
CMD [ "npm", "start" ]