FROM node:latest
WORKDIR /app
COPY ./ /app

RUN apt-get update
RUN apt install npm -y
RUN npm install

EXPOSE 5000
ENTRYPOINT ["node", "index.js"]