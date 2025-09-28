# ghost

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 6.0.10](https://img.shields.io/badge/AppVersion-6.0.10-informational?style=flat-square)

A Helm chart for deploying Ghost on Kubernetes

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| jessebot |  | <https://jessebot.work> |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | pod or node affinity |
| autoscaling.enabled | bool | `false` | enable autoscaling |
| autoscaling.maxReplicas | int | `2` | autoscaling max pod replicas |
| autoscaling.minReplicas | int | `1` | autoscaling minimum pod replicas |
| autoscaling.targetCPUUtilizationPercentage | int | `80` | autoscaling CPU percentage to start scaling at |
| autoscaling.targetMemoryUtilizationPercentage | int | `80` | autoscaling memory percentage to start scaling at |
| externalDatabase.database | string | `""` | database name. ignored if existingSecret not "" |
| externalDatabase.existingSecret | string | `""` | existing kubernetes secret for your external Database |
| externalDatabase.host | string | `""` | database hostname. ignored if existingSecret not "" |
| externalDatabase.password | string | `""` | database password. ignored if existingSecret not "" |
| externalDatabase.port | string | `""` | database port. ignored if existingSecret not "" |
| externalDatabase.root_password | string | `""` | database root password. ignored if existingSecret not "" |
| externalDatabase.secretKeys.database | string | `""` | secret key in your existing k8s secret for the database name |
| externalDatabase.secretKeys.hostname | string | `""` | secret key in your existing k8s secret for the database hostname |
| externalDatabase.secretKeys.password | string | `""` | secret key in your existing k8s secret for the database password |
| externalDatabase.secretKeys.port | string | `""` | secret key in your existing k8s secret for the database port |
| externalDatabase.secretKeys.root_password | string | `""` | secret key in your existing k8s secret for the database root password |
| externalDatabase.secretKeys.username | string | `""` | secret key in your existing k8s secret for the database username |
| externalDatabase.username | string | `""` | database username. ignored if existingSecret not "" |
| fullnameOverride | string | `""` | fullname Override |
| ghost.admin.email | string | `""` | admin email. ignored if existingSecret not "" |
| ghost.admin.existingSecret | string | `""` | existing kubernetes secret with ghost admin credentials |
| ghost.admin.password | string | `""` | admin password. ignored if existingSecret not "" |
| ghost.admin.secretKeys.email | string | `""` | Key in existing Kubernetes Secret with the admin email. |
| ghost.admin.secretKeys.password | string | `""` | Key in existing Kubernetes Secret with the admin password. |
| ghost.admin.secretKeys.username | string | `""` | Key in existing Kubernetes Secret with the admin username. |
| ghost.admin.username | string | `""` | admin username. ignored if existingSecret not "" |
| ghost.blog_title | string | `""` | title of your ghost blog |
| ghost.enable_https | string | `""` | enable HTTPS for the ghost blog |
| ghost.skip_bootstrap | string | `""` | skip install of ghost at pod restart |
| ghost.smtp.existingSecret | string | `""` | existing kubernetes secret with ghost smtp credentials |
| ghost.smtp.host | string | `""` | smtp hostname. ignored if existingSecret not "" |
| ghost.smtp.password | string | `""` | smtp password. ignored if existingSecret not "" |
| ghost.smtp.port | string | `""` | smtp port. ignored if existingSecret not "" |
| ghost.smtp.protocol | string | `""` | smtp protocol. ignored if existingSecret not "" |
| ghost.smtp.secretKeys.host | string | `""` | Key in existing Kubernetes Secret with the smtp host. |
| ghost.smtp.secretKeys.password | string | `""` | Key in existing Kubernetes Secret with the smtp password. |
| ghost.smtp.secretKeys.port | string | `""` | Key in existing Kubernetes Secret with the smtp port. |
| ghost.smtp.secretKeys.protocol | string | `""` | Key in existing Kubernetes Secret with the smtp protocol. |
| ghost.smtp.secretKeys.username | string | `""` | Key in existing Kubernetes Secret with the smtp username. |
| ghost.smtp.username | string | `""` | smtp username. ignored if existingSecret not "" |
| ghost.url | string | `""` | public url of the ghost blog |
| image.pullPolicy | string | `"IfNotPresent"` | This sets the pull policy for images. |
| image.repository | string | `"ghost"` | image repo |
| image.tag | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.className | string | `""` | ingress class name e.g. nginx |
| ingress.enabled | bool | `false` | enable ingress from outside the cluster |
| ingress.hosts[0].host | string | `"chart-example.local"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| ingress.tls | list | `[]` |  |
| livenessProbe.httpGet.path | string | `"/"` |  |
| livenessProbe.httpGet.port | string | `"http"` |  |
| nameOverride | string | `""` | This is to override the chart name. |
| nodeSelector | object | `{}` | node selector |
| persistence.accessModes | list | `[]` | accessModes for the PVC (ignored if persistence.existingClaim is set) |
| persistence.existingClaim | string | `""` | use an existing Kubernetes Peristent Volume Claim |
| persistence.storage | string | `"1Gi"` | size of the PVC (ignored if persistence.existingClaim is set) |
| podAnnotations | object | `{}` | This is for setting Kubernetes Annotations to a Pod. For more information checkout: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ |
| podLabels | object | `{}` | This is for setting Kubernetes Labels to a Pod. For more information checkout: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ |
| podSecurityContext | object | `{}` | Configure Pods Security Context ref: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/#set-the-security-context-for-a-pod |
| readinessProbe.httpGet.path | string | `"/"` |  |
| readinessProbe.httpGet.port | string | `"http"` |  |
| replicaCount | int | `1` | This will set the replicaset count more information can be found here: https://kubernetes.io/docs/concepts/workloads/controllers/replicaset/ |
| resources | object | `{}` | pod resources: requested cpu/mem and limits for cpu/mem |
| securityContext | object | `{}` |  |
| service.port | int | `80` | This sets the ports more information can be found here: https://kubernetes.io/docs/concepts/services-networking/service/#field-spec-ports |
| service.targetPort | int | `2368` | this is the port in the container you want to contact |
| service.type | string | `"ClusterIP"` | This sets the service type more information can be found here: https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.automount | bool | `true` | Automatically mount a ServiceAccount's API credentials? |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |
| tolerations | list | `[]` | tolerations to tolerate tainted nodes |
| volumeMounts | list | `[]` | Additional volumeMounts on the output Deployment definition. |
| volumes | list | `[]` | Additional volumes on the output Deployment definition. |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)
