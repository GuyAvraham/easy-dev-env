FROM node:12.13.1
WORKDIR /app
COPY package.json package.json

WORKDIR express-it
RUN yarn

COPY . /app/.

CMD yarn start