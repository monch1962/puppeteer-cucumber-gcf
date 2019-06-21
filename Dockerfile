#FROM cypress/base:10
FROM node:10.15

ENV BROWSER_API "puppeteer"
COPY package.json package.json
RUN npm install

COPY ./features ./features
COPY ./results ./results

CMD npm run test
