#FROM cypress/base:10
FROM node:10.15

ENV PUPPETEER 1
COPY package.json package.json
RUN npm install
# RUN npm install --save-dev cypress cypress-cucumber-preprocessor cypress-image-snapshot cypress-junit-reporter

#COPY ./cypress.json ./cypress.json
#COPY ./cypress/plugins/index.js ./cypress/plugins/index.js
#COPY ./cypress/integration ./cypress/integration
#COPY ./cypress/support ./cypress/support
COPY ./features ./features
COPY ./results ./results

CMD npm run test
