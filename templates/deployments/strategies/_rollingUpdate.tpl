{{/*
Deployment strategies : Rolling Update.
*/}}

{{- define "dapr-microservice-chart.deployment.strategy.rollingUpdate" -}}
type: RollingUpdate
rollingUpdate:
    maxUnavailable: 0
    maxSurge: 10%
{{- end }}