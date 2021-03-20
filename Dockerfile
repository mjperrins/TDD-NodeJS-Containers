FROM node:10.24.0-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY ./data/countryCurrencyMetadata.csv swagger.yaml ./

COPY src ./src

EXPOSE 4001

CMD ["npm", "start"]

