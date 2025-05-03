
FROM node:18-alpine

WORKDIR /app

RUN apk add --no-cache git && \
    git clone https://github.com/LightUnblocker/Light.git . 


RUN npm install

EXPOSE 8080

CMD ["npm", "start"]
