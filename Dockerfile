FROM node:5.11.1

RUN mkdir -p /var/www/app
RUN mkdir /tmp/npm

COPY package.json /tmp/npm
RUN cd /tmp/npm && npm install
RUN mv /tmp/npm/node_modules /var/www/app/node_modules

COPY . /var/www/app
WORKDIR /var/www/app

EXPOSE 3000

CMD npm start
