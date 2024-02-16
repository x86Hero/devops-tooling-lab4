FROM node:20.11.1-alpine
RUN apt npm install -y
RUN npm install
COPY . .
EXPOSE 5000
ENTRYPOINT ["node", "index.js"]