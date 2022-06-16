# Nodejs-Docker
Use Nodejs current whith docker-compose

## To build and start the container for the first time
```sh
git clone https://github.com/jnolleau/Nodejs-Docker.git

cd Nodejs-Docker
docker compose up --build
```
## To install Vue.js 3 and create a starting project

```sh
docker exec -ti node-docker-test-frontend-1 /bin/sh
```

Then in container:

```sh
npm install create-vue@latest
npm init vue@latest # You will choose a "Project name"
cd <your-project-name>
npm install
```
## To start a dev server
```sh
cd <your-project-name>
```

Add to vite.config.js if not already done:
```sh
  server: {
    host: true,     # true for 0.0.0.0, set real ip otherwise
    port: 3000      # choose the port used inside container
  }
```
Then
```sh
npm run dev
```
### At this stage the project is accessible on your host at the address:
```
http://localhost:3000/
```

## To stop the container:
```
press Ctrl+C
```

## To start an already scaffolded project
Just switch this two line in ``docker-compose.yml``
```sh
command: sh -c "tail -f /dev/null"
# command: sh -c "cd frontend && npm run dev"
```
into:
```sh
# command: sh -c "tail -f /dev/null"
command: sh -c "cd frontend && npm run dev"
```
Then
```
docker compose up
```
Your server is up, you can code your projet in Vue.js file structure !


# 
