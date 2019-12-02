FROM node:12.13.1
WORKDIR /app
COPY package.json package.json
RUN yarn

COPY . .
RUN yarn start