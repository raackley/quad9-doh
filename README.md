# quad9-doh

## Overview

A container to run Quad9's DNS over HTTPs service using the cloudflared binary.

## To run the service

```
docker run -p 53:53/udp -p 53:53/tcp -d raackley/quad9-doh
```

## References

This is based on [CloudFlare's Instructions](https://developers.cloudflare.com/1.1.1.1/dns-over-https/cloudflared-proxy/) to setup the service, but uses  [quad9's](https://quad9.net/doh-quad9-dns-servers/) upstream DNS over HTTPS service.
