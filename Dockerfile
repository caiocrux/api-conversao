# base image
FROM node:erbium

LABEL maintainer="Caio Felipe Cruz"
# set working directory 
WORKDIR /app
# install and cache app dependencies 
COPY package.json /app/package.json

RUN npm install

# add app 
COPY . /app 
# start app

CMD node index.js

EXPOSE 8080
