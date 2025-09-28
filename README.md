Yet another [ghost](https://ghost.org/) helm chart. This one is licensed AGPL 3 or higher so you can actually use it however you want as long as it's open source.

We deploy:

- Deployment for [ghost](https://hub.docker.com/_/ghost) docker image
- Secrets:
  - database credentials
  - smtp credentials
  - admin credentials (these don't do anything yet, but you can set them for your own automation)
