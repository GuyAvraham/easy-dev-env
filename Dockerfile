FROM node:12.13.1
WORKDIR /app
COPY pretty-landing-page/package.json pretty-landing-page/package.json
COPY pretty-landing-page/yarn.lock pretty-landing-page/yarn.lock

COPY react-firestore-authentication/package.json react-firestore-authentication/package.json
COPY react-firestore-authentication/yarn.lock react-firestore-authentication/yarn.lock
COPY react-firestore-authentication/package-lock.json react-firestore-authentication/package-lock.json
COPY express-it/package.json express-it/package.json
COPY express-it/yarn.lock express-it/yarn.lock


WORKDIR pretty-landing-page
RUN yarn

WORKDIR express-it
RUN yarn

WORKDIR eact-firestore-authentication
RUN yarn

COPY pretty-landing-page /app/pretty-landing-page
COPY react-firestore-authentication /app/react-firestore-authentication
COPY express-it /app/express-it

CMD yarn start