{{- define "parent1" -}}
{{- .Values.global.global_common_key_different -}}
{{- end -}}

{{- define "parent2" -}}
{{- .Values.global.global_common_key -}}
{{- end -}}

{{- define "parent_parent1" -}}
test_parent_h_t1: {{ include "parent1" . }}
{{- end -}}

{{- define "parent_child1" -}}
test_parent_h_t2: {{ include "child1" . }}
{{- end -}}

{{- define "parent_sub_child1" -}}
test_parent_h_t3: {{ include "sub_child1" . }}
{{- end -}}

{{- define "parent_h_from_yaml.parent" -}}
{{ include "parent_y.with_parent" . }}
{{- end -}}
{{- define "parent_h_from_yaml.child" -}}
{{ include "child_y_with_child" . }}
{{- end -}}
{{- define "parent_h_from_yaml.sub_child" -}}
{{ include "sub_child_y_with_sub_child" . }}
{{- end -}}