FROM node
WORKDIR /app
COPY prettty-landing-page/package.json prettty-landing-page/package.json
COPY prettty-landing-page/yarn.lock prettty-landing-page/yarn.lock 
COPY react-firestore-authentication/package.json react-firestore-authentication/package.json
COPY react-firestore-authentication/yarn.lock react-firestore-authentication/yarn.lock
COPY react-firestore-authentication/package-lock.json react-firestore-authentication/package-lock.json

WORKDIR prettty-landing-page
RUN yarn
CMD yarn start
