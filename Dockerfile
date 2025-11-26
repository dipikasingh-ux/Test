# Node.js runtime = base image
FROM node:20.11.1-bookworm-slim


WORKDIR /newdir
COPY package*.json ./
RUN npm install
CMD ["npm", "start"]
