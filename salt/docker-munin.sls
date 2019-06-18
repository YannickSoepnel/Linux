configure_docker_munin:
  file.managed:
    - name: /tmp/docker-munin.sh
    - source: salt://resources/docker-munin.sh
