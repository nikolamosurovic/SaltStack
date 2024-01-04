copy_index_file:
  file.managed:
    - name: /srv/salt/index.html
    - source: salt://nikola-mosurovic/index.html
    - skip_verify: True

web_server_container:
  docker_container.running:
    - name: my_apache_server  # Name of Apache Docker container
    - image: httpd
    - port_bindings:
        '80/tcp':
          - HostPort: '80'
    - restart: always
    - binds:
      - /srv/salt/index.html:/usr/local/apache2/htdocs/index.html:rw