
# Docker file for building a container with Cypress
FROM cypress/included:5.1.0
MAINTAINER Ronnie Huang <ronniehuang@outlook.com>

# Install cypress cucmber preprocessor
RUN npm install cucumber cypress-cucumber-preprocessor multiple-cucumber-html-reporter

ENTRYPOINT ["cypress", "run", "--browser", "chrome"]
