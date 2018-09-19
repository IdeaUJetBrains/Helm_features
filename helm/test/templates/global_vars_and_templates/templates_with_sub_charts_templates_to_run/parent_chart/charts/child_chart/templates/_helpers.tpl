{{- define "child.tpl1" -}}
{{- default .Chart.Name .Values.global.global_key1 -}}
{{- end -}}

{{- define "child.tpl2" }}
test4: {{ template "child.tpl1" . }}
test5: {{ template "parent.tpl1" . }}
test7: {{ template "parent.yaml.tpl" . }}
test6: child_test6_value
{{- end }}