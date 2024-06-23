# dapr-microservice-chart

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.1.0](https://img.shields.io/badge/AppVersion-0.1.0-informational?style=flat-square)

A microservice helm chart for distributed application with dapr.

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Alexandre Julien |  |  |

## Source Code

* <https://github.com/alexandrejulien/dapr-microservice-chart>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| dapr.config | string | `"dapr-config"` |  |
| dapr.enabled | bool | `false` |  |
| dapr.maxRequestSize | string | `"100"` |  |
| deployment | object | `{"replicas":1}` | Deployment configuration |
| deployment.replicas | int | `1` | Number of deployment replicas |
| distributedApplicationName | string | `"myapp"` | Name of your distributed application |
| env | object | `{"secretsBinding":null}` | Environment variables |
| env.secretsBinding | string | `nil` | Secret variables binding ENVIRONMENT_VARIABLE = Key in Kubernetes Secret |
| healthCheck | object | `{"probePath":"/"}` | Health check |
| healthCheck.probePath | string | `"/"` | Probe URL Path |
| microservice.appPort | int | `8080` | Microservice's application HTTP(s) port (80, 443) |
| microservice.image | string | `"mcr.microsoft.com/dotnet/samples:aspnetapp"` | Microservice's image |
| microservice.imagePullPolicy | string | `"Always"` | Image pull policy |
| microservice.name | string | `"my-microservice"` | Microservice's name |
| resources | object | `{"bestEffort":"false","dapr":{"limits":{"cpu":"300m","memory":"1024Mi"},"requests":{"cpu":"50m","memory":"100Mi"}},"limits":{"cpu":"1000m","memory":"2048Mi"},"requests":{"cpu":"50m","memory":"256Mi"}}` | Pod resources variables |
| resources.dapr.limits.cpu | string | `"300m"` | Limits dapr sidecar cpu size (mCores) |
| resources.dapr.limits.memory | string | `"1024Mi"` | Limits dapr sidecar memory size (Mi) |
| resources.dapr.requests.cpu | string | `"50m"` | Request dapr sidecar cpu size (mCores) |
| resources.dapr.requests.memory | string | `"100Mi"` | Request dapr memory size (Mi) |
| resources.limits.cpu | string | `"1000m"` | Limits cpu size (mCores) |
| resources.limits.memory | string | `"2048Mi"` | Limits memory size (Mi) |
| resources.requests.cpu | string | `"50m"` | Request cpu size (mCores) |
| resources.requests.memory | string | `"256Mi"` | Request memory size (Mi) |
| scaling | object | `{"maxReplicas":"5","minReplicas":"1","mode":"hpa","targetCPUScale":"1300","targetMemoryScale":"1000"}` | Scaling options |
| scaling.maxReplicas | string | `"5"` | maximum replicas in horizontal pod autoscaling |
| scaling.minReplicas | string | `"1"` | minimum replicas in horizontal pod autoscaling |
| scaling.mode | string | `"hpa"` | Pod scaling mode (hpa) |
| scaling.targetCPUScale | string | `"1300"` | target CPU for horizontal pod autoscaling |
| scaling.targetMemoryScale | string | `"1000"` | target memory for horizontal pod autoscaling |
| secretKeys | object | `{"kubernetes-secret":"socle-secrets"}` | Secret keys variables |
| secretKeys.kubernetes-secret | string | `"socle-secrets"` | Kubernetes secret source |
| secrets | object | `{"enable":false}` | Secrets configuration |
| secrets.enable | bool | `false` | Enable secrets |

