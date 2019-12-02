FROM node:12.13.1
WORKDIR /app
COPY package.json package.json
COPY yarn.lock yarn.lock
COPY package-lock.json package-lock.json

WORKDIR react-firestore-authentication
RUN yarn

COPY . /app/.

CMD yarn start