ensure_docker_modules:
  pkg.installed:
    - names:
      - python3-docker
      - python3-distutils

restart_docker_service:
  service.running:
    - name: docker
    - enable: True
    - watch:
      - pkg: ensure_docker_modules