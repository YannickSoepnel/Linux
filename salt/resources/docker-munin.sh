#Create docker munin
#!/bin/bash

sudo docker login -u yannick9334 -p ihvhbs93

sudo docker pull yannick9334/ubuntu-munin

sudo docker run --name munin -i -t -p 4949:4949 -dP yannick9334/ubuntu-munin
