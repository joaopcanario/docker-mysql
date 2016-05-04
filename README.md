# MySQL
> A easy deployment of MySQL Docker Container

![MySQL](http://mysqlrelease.com/wp-content/uploads/2015/05/whale-dolphin.png)

## Deployment

We consider that you already have the docker installed and fully configured on deployment server. First, you need set a container name, root password and the database name on settings file `settings.conf`. After that, run the command below:

```sh
make deploy
```

That will create a Volumes folder on current directory and run on port 3306 a mysql docker container. To access the running container run the command below (it'll ask for the root password and you should pass the same that's on settings.conf):

```sh
mysql -h $(docker-machine ip) --protocol=tcp -u root -p
```

### Controlling docker container (basic usage):

Set container id to a variable (paste the long or short id of container):

```sh
MYSQL=(container id)
```

Start the container:

```sh
docker start $MYSQL
```

Stop the container:

```sh
docker stop $MYSQL
```

Restart the container:

```sh
docker restart $MYSQL
```

For more controlling containers examples [go here](https://docs.docker.com/engine/quickstart/#controlling-containers)