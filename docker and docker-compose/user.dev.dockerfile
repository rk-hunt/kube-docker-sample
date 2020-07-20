FROM node:12.16.1-alpine3.9

WORKDIR /app

COPY package*.json ./
COPY . /app

#RUN yarn install --production : install only production dependencies
RUN yarn install
RUN yarn global add nodemon

ENV PATH /app/node_modules/.bin:$PATH
ENV NODE_ENV=development

EXPOSE 8001

USER node
CMD ["yarn", "start:user:service"]