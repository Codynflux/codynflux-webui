FROM node:22.14.0-bookworm

RUN mkdir /app
WORKDIR /app

COPY . /app/

RUN npm install && \
    npm run build

CMD ["npm", "run", "start"]