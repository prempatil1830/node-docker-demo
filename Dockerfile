FROM node:latest
WORKDIR /usr/src/app
COPY package.json ./
RUN npm install
COPY . .
EXPOSE 3000  # Changed from 4000 to match index.js default port
CMD [ "node", "index.js" ]
