## Grails 6.2.0 app testing NGINX acting as a reverse proxy

From command line run: `./startup.sh` to bulid both apps with docker compose.

Navigate to http://localhost/, this is the NGINX root, click the link to proxy to the grails app

For this to work on ubuntu I had to define a container name and use this in the proxy_pass url to the grails app.
