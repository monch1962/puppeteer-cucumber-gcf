FROM node:10.15

ENV BROWSER_API "puppeteer"
COPY package.json package.json
RUN npm install

COPY ./testcases ./testcases
COPY ./results ./results

CMD npm run test
#CMD npx cucumber-js --format json testcases/features/**/*.feature | npx cucumber-junit > results/test-results.xml
