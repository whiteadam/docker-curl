# docker-curl 
[![Docker Repository on Quay](https://quay.io/repository/whiteadam/curl/status "Docker Repository on Quay")](https://quay.io/repository/whiteadam/curl)

Alpine Linux image with only curl and libssl/cacerts.

## Why?
Some OS's don't have curl by default, instead of installing them, I mix in a
line like this to retrieve required information:

```console
$ sudo docker run -d \
-e HOST_LABEL="instanceId=$(docker run --rm whiteadam/curl -s http://169.254.169.254/latest/meta-data/instance-id)" \
-e AGENT_IP="$(docker run --rm whiteadam/curl -s http://169.254.169.254/latest/meta-data/local-ipv4)" \
--privileged -v /var/run/docker.sock:/var/run/docker.sock \
-v /var/lib/rancher:/var/lib/rancher \
rancher/agent https://rancher.example.com/
```

## Usage

```console
$ docker run --rm whiteadam/curl -s http://checkip.amazonaws.com/
```

## Tags

* `whiteadam/curl:latest` based on `alpine:3.4`
* `quay.io/whiteadam/curl:latest` based on `alpine:3.4`

## License

Copyright © 2016 Adam White

All contents licensed under the [MIT License](LICENSE)
