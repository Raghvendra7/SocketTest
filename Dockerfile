FROM node:8-slim

LABEL maintainer="Jonathan Gros-Dubois"
LABEL version="11.0.0"
LABEL description="Docker file for SocketCluster with support for clustering."

RUN mkdir -p /usr/src/
WORKDIR /usr/src/
COPY . /usr/src/

RUN npm install .

EXPOSE 8000

CMD ["npm", "run", "start:docker"]
