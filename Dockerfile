FROM alpine

WORKDIR /usr/app

RUN apk add --update nodejs npm
RUN npm i cloudscraper
RUN npm i randomstring
COPY ./cf.js ./

ENTRYPOINT ["node", "cf.js"]
