FROM node:20.11.1-alpine
RUN apt install npm -y
RUN npm install
COPY . .
EXPOSE 5000
ENTRYPOINT ["node", "index.js"]