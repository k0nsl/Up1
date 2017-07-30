FROM node
MAINTAINER k0nsl (i.am@k0nsl.org)

RUN git clone https://github.com/k0nsl/Up1

WORKDIR Up1
RUN cp server/server.conf.example server/server.conf
RUN cp client/config.js.example client/config.js

WORKDIR server
RUN npm install

EXPOSE 81

CMD node server.js
