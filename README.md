# SaltStack!

Environment description

You test environment consists of two publicly available virtual servers, salt-master and web-server. Both have Ubuntu 22.04 installed. You will get ssh access only to salt-master.
salt-master

    Has SaltStack installed with the configuration in /srv/salt.
    The configuration corresponds with the installation of web-server.
    Use index.html from this Git repository as a source for web-server response.

web-server

    web-server is a minion to salt-master.
    web-server key has been accepted by salt-master.
    Apart from SaltStack, it has been freshly installed.
    Firewall INPUT policy is set to DROP.

Task

    Use SaltStack on salt-master to install and configure Docker on web-server.
    Deploy a pod that hosts a web server of your choice and outputs http content of index.html.
    It must listen on public IP address and port 80 and only respond to requests from 178.216.60.90.
    http requests from any other IP must be unsuccessful.
    Find a way to distribute repository contents across file system as best as you can.

Acceptance points

    Server web-server must output content of index.html on port 80 of public IP address only to 178.216.60.90.
    Request must fail from any other random IP.
    The process must be repeatable in a way that when index.html file is updated in this Git repository, it gets updated on web-server with minimal manual interaction.
