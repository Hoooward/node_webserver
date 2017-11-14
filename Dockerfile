FROM node:7.9.0-alpine
MAINTAINER libo@yodamob.com  
EXPOSE 8181
RUN mkdir -p /home/yodatask
WORKDIR /home/yodatask
ADD . /home/yodatask
RUN npm install
RUN node -v

CMD node /home/yodatask/server.js