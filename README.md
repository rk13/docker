Docker
======
### Simple commands
* `docker run -i -t ubuntu /bin/bash` - starts Ubuntu
* `docker run -d ubuntu /bin/sh -c "while true; do echo hello world; sleep 1; done"` - runs daemon
* `docker run -d -P --name web training/webapp python app.py` - run container with specified name
* `docker ps` - list RUNNING docker containers
* `docker ps -a` - list ALL docker containers
* `docker ps -l` - list LAST docker containers
* `docker logs sad_bardeen` - display container output
* `docker stop sad_bardeen` - stops container


### Port forwarding, linking
* `docker run -d -p 5000:5000 training/webapp python app.py`
* `docker run --rm --name web2 --link db:db training/webapp env`

### Images
* `docker images` - display images downloaded locally
* `docker search haproxy` - search particular image
* `docker pull training/sinatra` - pull image from Docker hub
* `docker commit -m "Changes" -a "rk13" 0b2616b0e5a8 ouruser/sinatra:v2` - save container as new image
