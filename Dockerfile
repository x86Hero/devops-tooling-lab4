FROM node:latest
RUN apt-get update
RUN apt install npm -y
RUN npm install
COPY . .
EXPOSE 5000
ENTRYPOINT ["node", "index.js"]