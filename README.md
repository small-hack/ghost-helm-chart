# Ghost helm chart

<a href="https://github.com/small-hack/ghost-helm-chart/releases"><img src="https://img.shields.io/github/v/release/small-hack/ghost-helm-chart?style=plastic&labelColor=blue&color=green&logo=GitHub&logoColor=white"></a>

Yet another (unofficial) [Ghost](https://ghost.org/) helm chart. This one is licensed [AGPL](./LICENSE), so please feel free to do as you like as long as you keep it open source 💚

This helm chart deploys:

- Deployments/Services for:
  - [Ghost](https://hub.docker.com/_/ghost)
  - [ActivityPub](https://github.com/orgs/TryGhost/packages?repo_name=ActivityPub) (and migrations image to run before that as an initContainer)
  - nginx-proxy (should you need that)
- PersistentVolumeClaim (or you can provide an existing one)
- Ingress (includes activityPub routes)
- Secrets (or you can provide your own):
  - MySQL credentials (one for ActivityPub and one for Ghost)
  - SMTP credentials
  - Ghost Admin credentials (these don't do anything *yet*, but you can set them for your own automation)

## TLDR

You can find the helm parameters in the [`values.yaml`](./charts/ghost/values.yaml) and the auto-generated docs in the chart [`README.md`](./charts/ghost/README.md).

Please read through the parameters and modify them locally before installing the chart:

```bash
# add the helm repo locally
helm repo add ghost https://small-hack.github.io/ghost-helm-chart

# downloads the values.yaml locally
helm show values ghost/ghost > values.yaml

# You should then edit the values.yaml to your liking.

# install the chart
helm install my-release-name ghost/ghost --values values.yaml
```

### Example usage in Argo CD

If you're using Argo CD, you may find these App of apps directories useful (there's an `app_of_apps`, as well as an `app_of_apps_with_tolerations`):

https://github.com/small-hack/argocd-apps/blob/main/ghost/
