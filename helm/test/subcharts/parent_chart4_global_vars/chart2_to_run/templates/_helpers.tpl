{{- define "some.template" -}}
{{- default .Chart.Name .Values.global.global_common_key_different }}
{{- end -}}

{{- define "label_direct_from_defined_template.test" -}}
{{- default .Chart.Name .Values.global.global_common_key_different }}
{{- end -}}

{{- define "from_helpers.labels" }}
test1: {{ template "some.template" . }}
test2: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
test3: {{.Release.Service }}
test4: {{.Release.Name }}
{{- end }}