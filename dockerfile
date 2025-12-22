FROM node20.12
WORKDIR /usr/src/app
ARG NODE_ENV
ENV NODE_ENV $NODE_ENV

COPY package*.json ./

# 切换到 root 用户
USER root
RUN chown -R root:root /usr/src/app
#RUN cnpm install

COPY . /usr/src/app

ENV PORT 6060
EXPOSE $PORT
CMD [ "npm", "start" ]
