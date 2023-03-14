FROM ghost:alpine

RUN npm install ghos3 && \
    mkdir -p ./content/adapters/storage && \
    cp -r ./node_modules/ghos3 ./content/adapters/storage/s3 && \
    rm -rf ./node_modules

WORKDIR /var/lib/ghost
ENTRYPOINT ["docker-entrypoint.sh"]
EXPOSE 2368
CMD ["node", "current/index.js"]
