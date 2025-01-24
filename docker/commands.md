## Basic
Dockerfile
```
# syntax=docker/dockerfile:1

FROM node:lts-alpine
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]
EXPOSE 3000
```

Build an image
```
docker build -t getting-started .
```

Docker run
```
docker run -d -p 127.0.0.1:3000:3000 getting-started
```

Manage containers
```
docker ps
docker stop <the-container-id>
docker rm <the-container-id>

//Stop and remove
docker rm -f <the-container-id>
```

Docker Hub Login
```
docker login -u YOUR-USER-NAME
```

Docker tag
```
docker tag getting-started YOUR-USER-NAME/getting-started
```

Docker push
```
docker push YOUR-USER-NAME/getting-started
```

Docker run you image
```
docker run -dp 0.0.0.0:3000:3000 YOUR-USER-NAME/getting-started
```

## Volume
Create a volume
```
docker volume create todo-db
```

Mount volume
```
docker run -dp 127.0.0.1:3000:3000 --mount type=volume,src=todo-db,target=/etc/todos getting-started
```

## Bind mounts
Linux
```
docker run -it --mount type=bind,src="$(pwd)",target=/src ubuntu bash
```

Powershell
```
docker run -it --mount "type=bind,src=$($pwd),target=/src" ubuntu bash
```

