Docker


Docker -setup
Total 10 containers using.

5 Microservices
3 Databases
1 Cache server
1 Messaging server


Different Api usage
 UI > WebUI
 Catalog API  > MySQL DB store product related information.
 Carts API  > DynamoDB store cart related information.
 Checkout API > Cache > Redis (Address information which address to be delivered)
 Orders API > SQL > PostgreSQL DB store information and also store information in RabbitMQ

Docker Concepts
1) Docker Workflow:
2) Docker Build:
3) Docker Compose:



Docker image in docker hub and want to pull and then run it. 
Docker build image and run the docker image, push image to docker hub.
Docker Hub: Docker Pull and Run 
Docker image:  Build, run, Push


Docker Command
Docker File instructions
From: 
Run:  Copy 

Volume 
WorkDIR
ENV:
User:
Expose 
Exntrypoint:
.dockerignore


Multi Stage Build
Docker Compose
Service 
networks
Volumes
health checks
depends on
environment variables
security options
 

Show only running container
Docker ps 
 

Check which container is running 
Also it’s provide container id, image, command, Status, ports, and names related information’s.

Docker ps -a: check all container (including stopped/ Exited ones)
 

docker rm <container_id_or_name> : 
Remove specific container 
 

Delete all stopped containers
docker rm $(docker ps -aq)
 

Remove all stopped containers 
docker container prune
 


Remove a running container (force)
docker rm -f (container _id_or_name)
 

docker images
Showing information like repository , tag, Image ID, Created , Size.

 
 
docker rmi <image_id>
remove specific image 
 

Remove unused images
docker image prune
 

Docker ps -aq
showing only container id
 

remove all docker images
docker rmi $(docker images -a -q)
 



Docker Terminology 

Docker Client 
docker build
docker run 
docker push
docker pull


Docker Host 
docker daemon: docker daemon is the background service that actually ru

ns docker.

docker container 
docker images


Docker Hub
Docker pull
docker run 


Pull-from-Hub-and-Run-Docker-Image
docker images
 

Docker Pull image from docker hub
docker pull stacksimplify/retail-store-sample-ui:1.0.0
 

docker images
 

Docker run container 
docker run --name <CONTAINER-NAME> -p <HOST_PORT>:<CONTAINER_PORT> -d <IMAGE_NAME>:<TAG>
 

Container is in running mode 
 

UI access from web browser











 

 

 
 



Docker Command 

Enter inside a running  docker container use below command 

docker exec
Runs a command inside an existing running container
-it
Combination of two flags:
-i → interactive (keeps input open) 
-t → gives a terminal (TTY)

docker exec -it dev1/bin/sh
 

Inside container linux  run below command to give kernel version
uname -a
 

Run command in side container to check java version 
java –version
 

From the host machine to run direct command to the container 
docker exec -it dev1 ls
 

docker stop  dev1
 

docker stop container and remove container 
 

docker image remove command 
docker rmi < imageid>
 

Build-Docker-Image-Push-to-DockerHub
How to build docker image and push to docker hub.

Run docker login command and it will redirect to web browser.

Enter code to the browser for login. 

 

From web browser get below message.
 



 Download the code for which Docker Image to be built
mkdir demo-docker-build
wget https://github.com/aws-containers/retail-store-sample-app/archive/refs/tags/v1.5.0.zip
unzip v1.2.4.zip
d /home/ec2-user/demo-docker-build/retail-store-sample-app-1.2.4/src/ui/src/main/resources/templates
File name: home.html
We are making a change for UI stating V2 at line 
List to Verify if we are at that file
ls home.html
ls -lrt
 


cd /home/gopal/demo-docker-build/retail-store-sample-app-1.5.0/src/ui/src/main/resources/templates

sed -i 's/Secret Shop<\/span>/Secret Shop - V2 Version<\/span>/' home.html
Verify It Worked:
grep 'Secret Shop' home.html

 

Run docker build command to create image 
Go to the docker file location 
 

Run build command to create image 

docker build -t retail-store-sample-ui:2.0.0 .
 

created new image
docker images
 

Create new images run a container
docker run --name dev1-v2 -p 8889:8080 -d retail-store-sample-ui:2.0.0
docker ps 
 

Version 2 is up and running.

 

Tag and Push the Docker Image to Docker Hub

docker tag retail-store-sample-ui:2.0.0 asd9955722/boot_camp:2.0.0
 


docker push
docker push asd9955722/boot_camp:2.0.0  
 


Verify the Docker Image on Docker Hub
 

