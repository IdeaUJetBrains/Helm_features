{{- define "parent1" -}}
test_parent_h_t2: {{ template "sub.child1" . }}
{{- end -}}
{{/*should be errors:*/}}
test_key: test