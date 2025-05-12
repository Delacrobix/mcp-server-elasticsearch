FROM node:lts-alpine

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install --frozen-lockfile --ignore-scripts

COPY . .

RUN npm run build
