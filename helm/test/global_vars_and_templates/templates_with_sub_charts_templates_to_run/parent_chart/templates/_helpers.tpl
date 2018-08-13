{{- define "parent.tpl1" -}}
{{- default .Chart.Name .Values.global.global_key1 -}}
{{- end -}}


{{- define "parent.tpl2" }}
test1: {{ template "parent.tpl1" . }}
test2: {{ template "child.tpl1" . }}
test3: parent_test3_value
{{- end }}