# lineshell-docker

![Docker L](https://raw.githubusercontent.com/docker/docker/master/docs/static_files/docker-logo-compressed.png "Docker")

```bash
docker run -it -d --name lineshell -p 8080:8080 -e MONGODB_USERNAME=lineshell_user -e MONGODB_PASSWORD=lineshell_pass -e MONGODB_DBNAME=admin tehes/lineshell-docker
```
