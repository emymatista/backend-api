FROM node:20

RUN npm install npm@latest -g

RUN npm install -g @nestjs/cli

COPY package*.json .

RUN npm install

WORKDIR /app

COPY . .

EXPOSE 3000

CMD ["npm", "run", "start:prod"]