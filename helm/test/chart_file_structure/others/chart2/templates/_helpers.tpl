{{- define "some.template" -}}
{{- default .Chart.Name .Values.global.global_key1 -}}
{{- end -}}

{{- define "some.template" -}}
test1: test
{{- end -}}


{{- define "parent.from_helpers.labels" }}
test2: {{ template "parent.some.template" . }}
{{- end }}