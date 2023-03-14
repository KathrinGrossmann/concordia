# Concordia Blog

The blog uses Ghost <https://ghost.org/>.

## Prerequisites

- Install Docker: <https://docs.docker.com/get-docker/>
  - for Linux install docker compose plugin: <https://docs.docker.com/compose/install/linux/>
- Install npm <https://docs.npmjs.com/downloading-and-installing-node-js-and-npm>

## Setup Access to Minio Buckets via Tokens

- Make a copy of the file `ghost.env` with the name `.ghost.env`. Be aware of the leading **.**
- Copy the credentials for *Minio* to `.ghost.env`and **never** commit `.ghost.env`  to github.

## Run the Concordia Blog Locally

- Start the container: `docker compose up`
- Navigate to <http://localhost:2368/ghost> and sign in
- Activate the concordia Theme: <http://localhost:2368/ghost/#/settings/design/change-theme> click the advanced button and activate *concordia-theme*.
- View the blog on <http://localhost:2368>

# Development

## Local NPM Watcher

- Navigate to `cd content\themes\concordia-theme`
- Install dependencies `npm install`
- Start watcher `npm run dev`
- Happy coding

## Docker Tools

- The file `docker-compose-tools.yml` contains:
  - a *sqlite database viewer*, which can be started with `docker compose -f docker-compose-tools.yml up -d sqlitebrowser`
  - a blueprint for a **Minio** server -> only for the curious...
