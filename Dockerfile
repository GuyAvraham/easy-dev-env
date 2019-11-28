FROM node
WORKDIR /app
COPY pretty-landing-page/package.json pretty-landing-page/package.json
COPY pretty-landing-page/yarn.lock pretty-landing-page/yarn.lock 
COPY react-firestore-authentication/package.json react-firestore-authentication/package.json
COPY react-firestore-authentication/yarn.lock react-firestore-authentication/yarn.lock
COPY react-firestore-authentication/package-lock.json react-firestore-authentication/package-lock.json

WORKDIR pretty-landing-page
RUN yarn

COPY pretty-landing-page /app/pretty-landing-page
COPY react-firestore-authentication /app/react-firestore-authentication

CMD yarn start