install_wordpress:
  file.managed:
    - name: /tmp/wordpress.sh
    - source: salt://resources/wordpress.sh
