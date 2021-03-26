FROM node:10-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY ./data/countryCurrencyMetadata.csv swagger.yaml ./

COPY src ./src

EXPOSE 4001

CMD ["npm", "start"]

