# Concordia Blog

The blog uses Ghost <https://ghost.org/>.

## Prerequisites

- Install Docker: <https://docs.docker.com/get-docker/>
  - for Linux install docker compose plugin: <https://docs.docker.com/compose/install/linux/>
- Install npm <https://docs.npmjs.com/downloading-and-installing-node-js-and-npm>

## Run the concordia blog locally

- Start the container: `docker compose up`
- Navigate to <http://localhost:2368/ghost> and sign in
- Activate the concordia Theme: <http://localhost:2368/ghost/#/settings/design/change-theme> click the advanced button and activate *concordia-theme*.
- View the blog on <http://localhost:2368>

## Development

- Navigate to `cd content\themes\concordia-theme`
- Install dependencies `npm install`
- Start watcher `npm run dev`
- Happy coding
