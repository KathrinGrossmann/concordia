FROM ghost:alpine

# Minio Adapter
RUN npm install ghos3 && \
    mkdir -p ./content/adapters/storage && \
    cp -r ./node_modules/ghos3 ./content/adapters/storage/s3 && \
    rm -rf ./node_modules

# Concordia Theme
RUN mkdir -p /opt/concordia-theme \
 && mkdir -p /var/lib/ghost/content/themes \
 && ln -s /opt/concordia-theme\
    /var/lib/ghost/content/themes/concordia-theme

COPY ./content/themes/concordia-theme /opt/concordia-theme

WORKDIR /var/lib/ghost/content/themes

RUN npm install

WORKDIR /var/lib/ghost
ENTRYPOINT ["docker-entrypoint.sh"]
EXPOSE 2368
CMD ["node", "current/index.js"]
