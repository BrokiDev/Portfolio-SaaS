
FROM  node:lts-alpine

WORKDIR /app


COPY package.json ./

RUN npm install
RUN npm run build

COPY . .



EXPOSE 4321

CMD [ "npm", "start" ]

