# Node.js runtime = base image
FROM node:20.20.1-bookworm-slim

RUN apk add curl
WORKDIR /newdir
COPY package*.json ./
RUN npm install
CMD ["npm", "start"]