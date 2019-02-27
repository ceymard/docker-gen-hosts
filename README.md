# docker-gen-hosts

Shamelessly ripped from vincentlepot/docker-gen-hosts and based upon [Jason Wilder's docker-gen](https://github.com/jwilder/docker-gen), this script maintain up-to-date your hosts file with all the docker containers' IP address.
If an env variable VIRTUAL_HOST is available for a container, it will be used as an alias to 127.0.0.1 (ideal for development).

## Usage
```
docker pull ceymard/docker-gen-hosts
docker run -d --restart=always -v /etc/hosts:/generated_hostfile -v /var/run/docker.sock:/tmp/docker.sock --name docker-gen-hosts ceymard/docker-gen-hosts
```
