FROM node:12.16.1-alpine3.9

WORKDIR /app

COPY package*.json ./
COPY . /app

# install only production dependencies
RUN yarn install --production

ENV NODE_ENV=production

EXPOSE 8001

USER node

CMD ["yarn", "start:user"]