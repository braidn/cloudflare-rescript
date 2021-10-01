# Rescript Cloudflare Worker Example.

## Impetus

A modification from the [ReasonML](https://github.com/cloudflare/reason-worker-hello-world) example provided by Cloudflare.
Brings the ReasonML example into the world of Rescript.

## Getting it running

1. Make sure to have [Cloudflare's wrangler CI installed](https://github.com/cloudflare/wrangler).
1. Clone the repo and run `npm install` using a version of Node >= 16.
1. Run `npm run build` to compile the Rescript worker code.
1. Curl/Http/Wget http://127.0.0.1:8787

## Links

* Utilizes the [Return JSON](https://developers.cloudflare.com/workers/examples/return-json) example from the Cloudflare docs.