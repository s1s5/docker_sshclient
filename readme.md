``` shell
$ docker build . -t sshclient
### or
$ DOCKER_CONTENT_TRUST=0 docker pull s1s5/docker_sshclient
$ docker tag s1s5/docker_sshclient sshclient

$ docker run --rm -t -i \
    -e USER_ID=`id -u` -e GROUP_ID=`id -g` \
    -e USER=`id -n -u` -e GROUP=`id -n -g` \
    -v /home/`id -n -u`/.ssh:/home/`id -n -u`/.ssh sshclient -V
```
