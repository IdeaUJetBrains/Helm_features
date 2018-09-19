{{- define "parent1" -}}
{{- .Values.global.global_common_key_different -}}
{{- end -}}

{{- define "parent2" -}}
{{- .Values.global.global_common_key -}}
{{- end -}}

{{- define "parent_child1" -}}
test_parent_h_t1: {{ template "child1" . }}
{{- end -}}

{{- define "parent_sub_child1" -}}
test_parent_h_t2: {{ template "sub.child1" . }}
{{- end -}}

{{- define "parent_h_from_yaml.parent" -}}
{{ template "parent_y.with_parent" . }}
{{- end -}}
{{- define "parent_h_from_yaml.child" -}}
{{ template "child_y_with_child" . }}
{{- end -}}
{{- define "parent_h_from_yaml.sub_child" -}}
{{ template "sub_child_y_with_sub_child_renamed" . }}
{{- end -}}