# Node.js runtime = base image
FROM node:20.19.5-bookworm-slim

RUN apk add curl
WORKDIR /newdir
COPY package*.json ./
RUN npm install
CMD ["npm", "start"]
