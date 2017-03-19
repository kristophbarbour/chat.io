FROM node:7.7.3

#RUN useradd --user-group --create-home --shell /bin/false app

RUN npm install nodemon -g

ENV KIAORA=/opt/kiaora
ENV PORT=5000

USER root
RUN mkdir -p /opt/kiaora/server
RUN chown -R node: /opt/kiaora/
USER node