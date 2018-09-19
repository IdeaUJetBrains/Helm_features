{{- define "from_helpers.tpl1" -}}
{{- default .Chart.Name .Values.global.global_common_key_different }}
{{- end -}}

{{- define "from_helpers.tpl2" -}}
{{- default .Chart.Name .Values.global.global_common_key_different }}
{{- end -}}

{{- define "from_helpers.tpl3" }}
test1: {{ template "from_helpers.tpl1" . }}
test2: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
test3: {{.Release.Service }}
test4: {{.Release.Name }}
{{- end }}