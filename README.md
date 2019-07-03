# puppeteer-cucumber-gcf

Puppeteer+Cucumber tests running inside a Google Cloud Function

[![Build Status](https://dev.azure.com/monch1962/monch1962/_apis/build/status/monch1962.puppeteer-cucumber-gcf?branchName=master)](https://dev.azure.com/monch1962/monch1962/_build/latest?definitionId=4&branchName=master)
[![codecov](https://codecov.io/gh/monch1962/puppeteer-cucumber-gcf/branch/master/graph/badge.svg)](https://codecov.io/gh/monch1962/puppeteer-cucumber-gcf)

## Installing on your local PC

Bring in the Node library dependencies

`$ npm install`

## Executing tests locally

`$ npm run test`

## Executing tests within Docker container

First build the container image

`$ docker build . -t pcd`

To run tests and save the results to `./results`

`$ docker run -v "$(pwd)/results:/results" pcd:latest`

To run tests, 
- supplying your own feature file/s in local directory `./features` 
- saving the results to `./results`,

`$ docker run -e ROOT_URL=https://www.mysite.com/test -v "$(pwd)/features:/testcases/features" -v "$(pwd)/results:/results" pcd:latest`

To run tests, 
- supplying your own feature file/s in local directory `./features`, 
- some additional custom steps in `./steps`, 
- supporting implementations for those steps in `./support` 
- saving results to `./results`

`$ docker run -e ROOT_URL=https://www.mysite.com/test -v "$(pwd)/features:/testcases/features" -v "$(pwd)/steps:/testcases/steps/custom" -v "$(pwd)/support:/testcases/support/custom" -v "$(pwd)/results:/results" pcd:latest`

To run tests, 
- prepending `https://www.mysite.com/test` to all URLs in your feature files, 
- saving the results to `./results`

`$ docker run -e ROOT_URL=https://www.mysite.com/test -v "$(pwd)/results:/results" pcd:latest`

## Unit tests

Running unit tests involves starting a test web server, running a set of `.feature` files against that web server, then shutting down the web server

`$ npm run unit-tests`

## Executing tests against external sites

Details to follow...

## Deploying to Google Cloud Function

Details to follow
