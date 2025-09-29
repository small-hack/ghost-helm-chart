# ghost

![Version: 1.10.0](https://img.shields.io/badge/Version-1.10.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 6.0.10](https://img.shields.io/badge/AppVersion-6.0.10-informational?style=flat-square)

A Helm chart for deploying Ghost on Kubernetes

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| jessebot |  | <https://jessebot.work> |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| activity_pub.allowPrivateAddress | bool | `true` | allow private addresses |
| activity_pub.enabled | bool | `true` | enable activity pub. I actually don't know how to make this work without activity pub :( submit a PR if you know! |
| activity_pub.externalDatabase.database | string | `""` | database name. ignored if existingSecret not "" |
| activity_pub.externalDatabase.existingSecret | string | `""` | existing kubernetes secret for your external Database |
| activity_pub.externalDatabase.host | string | `""` | database hostname. ignored if existingSecret not "" |
| activity_pub.externalDatabase.password | string | `""` | database password. ignored if existingSecret not "" |
| activity_pub.externalDatabase.port | string | `""` | database port. ignored if existingSecret not "" |
| activity_pub.externalDatabase.root_password | string | `""` | database root password. ignored if existingSecret not "" |
| activity_pub.externalDatabase.secretKeys.connection_string | string | `""` | secret key in existing k8s secret for ActivityPub mysql connection string |
| activity_pub.externalDatabase.secretKeys.database | string | `""` | secret key in existing k8s secret for ActivityPub database name |
| activity_pub.externalDatabase.secretKeys.hostname | string | `""` | secret key in existing k8s secret for ActivityPub database hostname |
| activity_pub.externalDatabase.secretKeys.password | string | `""` | secret key in existing k8s secret for ActivityPub database password |
| activity_pub.externalDatabase.secretKeys.port | string | `""` | secret key in existing k8s secret for ActivityPub database port |
| activity_pub.externalDatabase.secretKeys.root_password | string | `""` | secret key in existing k8s secret for ActivityPub database root password |
| activity_pub.externalDatabase.secretKeys.username | string | `""` | secret key in existing k8s secret for ActivityPub database username |
| activity_pub.externalDatabase.username | string | `""` | database username. ignored if existingSecret not "" |
| activity_pub.image.pullPolicy | string | `"IfNotPresent"` | This sets the pull policy for ActivityPub images. |
| activity_pub.image.registry | string | `"ghcr.io"` | ActivityPub image registry |
| activity_pub.image.repository | string | `"tryghost/activitypub"` | ActivityPub image repo |
| activity_pub.image.tag | string | `"1.1"` | ActivityPub verison (the image tag) |
| activity_pub.podSecurityContext | object | `{}` | ActivityPub Configure Pods Security Context ref: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/#set-the-security-context-for-a-pod |
| activity_pub.resources | object | `{}` | ActivityPub pod resources: requested cpu/mem and limits for cpu/mem |
| activity_pub.securityContext | object | `{}` | ActivityPub Configure container Security Context |
| activity_pub.service.port | int | `8080` | sets the ActivityPub ports more information can be found here: https://kubernetes.io/docs/concepts/services-networking/service/#field-spec-ports |
| activity_pub.service.targetPort | int | `8080` | port in the ActivityPub container you want to contact |
| activity_pub.service.type | string | `"ClusterIP"` | sets the ActivityPub service type more information can be found here: https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types |
| activity_pub.skipSignatureVerfication | bool | `false` | not sure what this does. found it in a docker compose |
| activity_pub.useMq | bool | `false` | use MQ |
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
| ghost.admin_domain | string | `""` | admin domain of the ghost blog, used for admin portal (must NOT include http:// or https://) e.g. admin.blog.example.com |
| ghost.admin_url | string | `""` | public admin url of the ghost blog (must INCLUDE http:// or https://) e.g. https://admin.blog.example.com |
| ghost.blog_title | string | `""` | title of your ghost blog |
| ghost.domain | string | `""` | domain of the ghost blog (must NOT include http:// or https://) e.g. blog.example.com |
| ghost.enable_https | bool | `false` | enable HTTPS for the ghost blog |
| ghost.skip_bootstrap | bool | `false` | skip install of ghost at pod restart |
| ghost.smtp.existingSecret | string | `""` | existing kubernetes secret with ghost smtp credentials |
| ghost.smtp.from_address | string | `""` | smtp from address. ignored if existingSecret not "" |
| ghost.smtp.host | string | `""` | smtp hostname. ignored if existingSecret not "" |
| ghost.smtp.password | string | `""` | smtp password. ignored if existingSecret not "" |
| ghost.smtp.port | string | `""` | smtp port. ignored if existingSecret not "" |
| ghost.smtp.protocol | string | `""` | smtp protocol. ignored if existingSecret not "" |
| ghost.smtp.secretKeys.from_address | string | `""` | Key in existing Kubernetes Secret with the smtp from address. |
| ghost.smtp.secretKeys.host | string | `""` | Key in existing Kubernetes Secret with the smtp host. |
| ghost.smtp.secretKeys.password | string | `""` | Key in existing Kubernetes Secret with the smtp password. |
| ghost.smtp.secretKeys.port | string | `""` | Key in existing Kubernetes Secret with the smtp port. |
| ghost.smtp.secretKeys.protocol | string | `""` | Key in existing Kubernetes Secret with the smtp protocol. |
| ghost.smtp.secretKeys.username | string | `""` | Key in existing Kubernetes Secret with the smtp username. |
| ghost.smtp.username | string | `""` | smtp username. ignored if existingSecret not "" |
| ghost.url | string | `""` | public url of the ghost blog (must INCLUDE http:// or https://) e.g. https://blog.example.com |
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
| podAnnotations | object | `{}` | This is for setting Kubernetes Annotations to a Pod. For more info checkout: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ |
| podLabels | object | `{}` | This is for setting Kubernetes Labels to a Pod. For more info checkout: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ |
| podSecurityContext | object | `{}` | Configure Pods Security Context ref: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/#set-the-security-context-for-a-pod |
| proxy | object | `{"enabled":true}` | Options for embedded nginx reverse-proxy |
| proxy.enabled | bool | `true` | enable/disable the embedded proxy |
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
