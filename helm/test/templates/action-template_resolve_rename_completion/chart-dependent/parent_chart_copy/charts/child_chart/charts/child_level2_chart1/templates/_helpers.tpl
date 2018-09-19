{{- define "sub.child1" -}}
{{- .Values.global.global_common_key_different -}}
{{- end -}}

{{- define "sub.child2" -}}
{{- .Values.global.global_common_key -}}
{{- end -}}

{{- define "sub_child_child1" -}}
test_sub_child_h_t1: {{ template "child1" . }}
{{- end -}}

{{- define "sub_child_sub_child1" -}}
test_sub_child_h_t2: {{ template "sub.child1" . }}
{{- end -}}

{{- define "sub_child_h_from_yaml.parent" -}}
{{ template "parent_y.with_parent" . }}
{{- end -}}
{{- define "sub_child_h_from_yaml.child" -}}
{{ template "child_y_with_sub_child" . }}
{{- end -}}
{{- define "sub_child_h_from_yaml.sub_child" -}}
{{ template "sub_child_y_with_sub_child_renamed" . }}
{{- end -}}