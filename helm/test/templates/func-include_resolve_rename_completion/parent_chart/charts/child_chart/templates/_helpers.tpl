{{- define "child1" -}}
{{- .Values.global.global_common_key_different -}}
{{- end -}}

{{- define "child2" -}}
{{- .Values.global.global_common_key -}}
{{- end -}}

{{- define "child_child1" -}}
test_child_h_t1: {{ include "child1" . }}
{{- end -}}

{{- define "child_sub_child1" -}}
test_child_h_t2: {{ include "sub_child1" . }}
{{- end -}}

{{- define "child_h_from_yaml.parent" -}}
{{ include "parent_y.with_parent" . }}
{{- end -}}
{{- define "child_h_from_yaml.child" -}}
{{ include "child_y_with_child" . }}
{{- end -}}
{{- define "child_h_from_yaml.sub_child" -}}
{{ include "sub_child_y_with_sub_child" . }}
{{- end -}}