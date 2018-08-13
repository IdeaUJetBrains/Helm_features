{{- define "sub-folders_from_helpers.tpl1" -}}
{{- default .Chart.Name .Values.global.global_key1 -}}
{{- end -}}


{{- define "sub-folders_from_helpers.tpl2" }}
test4: {{ template "from_helpers.tpl1"  . }}
{{- end }}