FROM node:lts-alpine3.12

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# ARG NODE_ENV
# ENV NODE_ENV $NODE_ENV

# COPY install/package.json /usr/src/app/package.json

# RUN npm install --only=prod && \
#     npm cache clean --force
COPY . .
RUN pwd
RUN ls
RUN npm install


# ENV NODE_ENV=production \
#     daemon=false \
#     silent=false

EXPOSE 4567

CMD node ./nodebb build ;  node ./nodebb start ;  node ./nodebb log

