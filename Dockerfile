FROM node:alpine

WORKDIR /usr/app

COPY package.json ./

RUN npm install --location=global npm

RUN npm install

COPY . .

EXPOSE 3001

CMD ["npm", "start"]