copy_htaccess_file:
  cmd.run:
    - name: "docker cp /srv/salt/.htaccess my_apache_server:/usr/local/apache2/htdocs/"