FROM node:latest

WORKDIR /usr/src/app

COPY hello-world/app.js ./
COPY hello-world/package.json ./

RUN npm i

# exclude the option to run as root
RUN useradd -d /home/username -m -s /bin/bash FinallyASafeUser
USER FinallyASafeUser

EXPOSE 8080
#Disable Healthcheck
#HEALTHCHECK NONE
# added Healthcheck, tells docker to check if a container is still working
HEALTHCHECK CMD curl --fail http://localhost || exit 1
CMD [ "npm", "start" ]