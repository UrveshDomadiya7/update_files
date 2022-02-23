FROM node:latest

EXPOSE 3000

WORKDIR /uv/nodeapp

ENV ENV_NODE = production

COPY package.json package-lock.json* ./

RUN npm install --production

COPY . .

ENTRYPOINT [ "node" ]

CMD [ "server.js" ]