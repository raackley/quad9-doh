# quad9-doh

## Overview

A container to run Quad9's DNS over HTTPs service using the cloudflared binary.

## To run the service

```
docker run -p 53:53/udp -p 53:53/tcp -d raackley/quad9-doh
```

## Kubernetes
Kubernetes Deployment and Service files are included that support this image.

```
$ kubectl apply -f kubernetes/quad9-doh_deployment.yml 
$ kubectl apply -f kubernetes/quad9-doh_service.yml 
```

## References

This is based on [CloudFlare's Instructions](https://developers.cloudflare.com/1.1.1.1/dns-over-https/cloudflared-proxy/) to setup the service, but uses  [quad9's](https://quad9.net/doh-quad9-dns-servers/) upstream DNS over HTTPS service.
