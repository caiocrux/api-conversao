# base image
FROM node:14.16.1-alpine3.13

LABEL maintainer="Caio Felipe Cruz"
# set working directory 
WORKDIR /app
# install and cache app dependencies 
COPY package*.json ./ 

RUN npm install

# add app 
COPY . .  
# start app
CMD ["node", "index.js"]

EXPOSE 8080
