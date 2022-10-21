FROM node:lts-alpine
WORKDIR /app
COPY package.json ./
RUN  npm install

RUN mkdir node_modules/.cache && chmod -R 777 node_modules/.cache
COPY . .
EXPOSE 8080
CMD ["npm", "run", "serve"]


# docker-composer up # to start the compilation process
# to install npm package run
# docker-compose exec web npm i bootstrap