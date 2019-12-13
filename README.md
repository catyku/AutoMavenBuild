# AutoMavenBuild
github maven project auto build war file use docker containter  

> your need install docker-ce 
* you can generator github ssh key to `private_key` file with below url  
  https://help.github.com/en/enterprise/2.17/user/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

* modify your github account and project name to `run.sh`
* run below script  to generator docker image 
  
```shell
  sudo docker build -t maven:project .
```
* build project script
```shell
sudo docker run -ti --rm --name my-maven-project -v ~/docker/AutoMavenBuild/m2:/root/.m2 -v ~/docker/AutoMavenBuild/webapps/:/root/target maven:project bash -c "/root/run.sh"
```
> * `~/docker/AutoMavenBuild` is this project path  
> * if you don't want save maven repository, remove `-v ~/docker/AutoMavenBuild/m2:/root/.m2 `  
>  * you can find build war file in `~/docker/AutoMavenBuild/webapps`