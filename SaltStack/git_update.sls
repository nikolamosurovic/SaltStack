update_index_html:
  file.managed:
    - name: /srv/salt/index.html  # Target path on the salt-master
    - source: salt://nikola-mosurovic/index.html   # Source file on the salt-master
    - on_changes:
      - cmd: update_index_in_docker

update_index_in_docker:
  cmd.run:
    - name: "docker cp /srv/salt/index.html $(docker ps -qf name=my_apache_server):/usr/local/apache2/htdocs/index.html"
    - unless: docker ps -qf name=my_apache_server | grep $(docker ps -qf name=my_apache_server) && sleep 5


docker_restart:
  cmd.run:
    - name: docker restart my_apache_server
  watch:
    - file: update_index_html