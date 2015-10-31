** Not yet ready for use **

# lineshell-docker

Lineshell is an open source project to manage servers and execute scripts on them, keeping a complete history of all executions results. It is based on Node.js and Mongodb.

More information at : https://github.com/TehesFR/Lineshell

## Automated Docker build for Lineshell

```bash
docker run -it -d --name lineshell -p 8080:8080 -e MONGODB_USERNAME=lineshell_user -e MONGODB_PASSWORD=lineshell_pass -e MONGODB_DBNAME=admin tehes/lineshell-docker
```
