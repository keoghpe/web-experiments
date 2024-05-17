```sh
docker compose up
```

## Local domain for development

Add this to `/etc/hosts`

```
127.0.0.1 sitely.dev
127.0.0.1 embeddly.dev
```

Flush DNS cache:

```
sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder
```

Inside ./nginx/certs

```
mkcert "sitely.dev" "*.sitely.dev"
mkcert "embeddly.dev" "*.embeddly.dev"
```

https://medium.com/@TomVance/local-domains-with-https-469036775818