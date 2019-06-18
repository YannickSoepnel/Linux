install_docker:
  file.managed:
    - name: /tmp/salt-docker.sh
    - source: salt://resources/salt-docker.sh
