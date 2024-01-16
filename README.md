# Docker
### Docker Build

To build the Docker image, execute the following command in the terminal:

```bash
docker build -t your-dockerhub-username/reponame .
```
Please replace your-dockerhub-username/reponame with your actual Docker Hub repository name.

### Docker Images

To view a list of Docker images on your system, use the following command:


```bash
docker images
```


```bash
docker image ls
```

### Docker Run
To run the Docker container, execute the following command:


```bash
docker run -d -p 8080:8080 --name spring 
your-dockerhub-username/reponame:latest
```

This command will start the Docker container in detached mode (-d), map port 8080 on the host to port 8080 in the container (-p 8080:8080), and name the container as spring. Adjust the port mappings as needed.

### Accessing the Application
Once the container is running, you can access the Spring Boot application by navigating to http://localhost:8080 in your web browser.

### To get Container ID/Container Name

```bash
docker ps -a
```
### To get Docker Container logs
To stop the running Docker container, use the following command:

```bash
docker logs -f Container-Id/Container-Name
```

### Stopping the Docker Container
To stop the running Docker container, use the following command:

```bash
docker stop Container-Id/Container-Name
```

### Forcefully Remove the Docker Container
To stop the running Docker container, use the following command:

```bash
docker rm -f Container-Id/Container-Name
```
