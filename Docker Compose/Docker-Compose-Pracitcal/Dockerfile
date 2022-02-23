FROM node:latest

EXPOSE 3000

WORKDIR /uv/nodeapp

ENV ENV_NODE=production

COPY [ "package*.json", "./" ]

RUN npm install --production

COPY . /uv/nodeapp

CMD ["node", "server.js" ]
