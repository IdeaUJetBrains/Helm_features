{{- define "mychart.labels" }}
labels:
  generator: helm
  date: {{ now | htmlDate }}
{{- end }}

{{- define "mychart.app" -}}
app_name: {{ .Chart.Name }}
app_version: "{{ .Chart.Version }}+{{ .Release.Time.Seconds }}"
{{- end -}}

{{- define "labels" }}from: child1{{ end }}