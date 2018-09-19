{{- define "from_helpers.tpl1" -}}
{{- default .Chart.Name .Values.global.global_key1 -}}
{{- end -}}


{{- define "from_helpers.tpl2" }}
test4: {{ template "from_helpers.tpl1"  . }}
{{- end }}


{{/* Ok:  it is a helm file for named templates */}}


{{/* Ok: not a helm file */}}