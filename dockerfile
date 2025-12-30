FROM registry.cn-hangzhou.aliyuncs.com/jnpub/node:18-buster
WORKDIR /src

COPY ./ /src



RUN cat /etc/resolv.conf

RUN npm install https://registry.npmmirror.com/supports-color/-/supports-color-7.2.0
