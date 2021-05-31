FROM node:10.23.2-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY ./data/countryCurrencyMetadata.csv swagger.yaml ./

COPY src ./src

EXPOSE 4001

CMD ["npm", "start"]

