configure_rsyslog:
  file.managed:
    - name: /etc/rsyslog.conf
    - source: salt://resources/rsyslog.conf
