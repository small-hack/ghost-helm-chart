# Ghost helm chart

<a href="https://github.com/jessebot/ghost-helm-chart/releases"><img src="https://img.shields.io/github/v/release/jessebot/ghost-helm-chart?style=plastic&labelColor=blue&color=green&logo=GitHub&logoColor=white"></a>

Yet another unofficial [ghost](https://ghost.org/) helm chart. This one is licensed AGPL 3 or higher so you can actually use it however you want as long as it's open source.

We deploy:

- Deployment for [ghost](https://hub.docker.com/_/ghost) docker image
- Persistent volume claim (or you can provide an existing one)
- Secrets (or you can provide your own):
  - database credentials
  - smtp credentials
  - admin credentials (these don't do anything yet, but you can set them for your own automation)


## TLDR

You can find the helm parameters in the [`values.yaml`](./charts/ghost/values.yaml) and the auto-generated docs in the chart [`README.md`](./charts/ghost/README.md).
