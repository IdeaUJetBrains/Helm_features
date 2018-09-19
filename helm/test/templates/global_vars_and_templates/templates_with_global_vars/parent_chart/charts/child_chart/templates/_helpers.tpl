{{- define "child1" -}}
{{- .Values.global.global_common_key_different -}}
{{- end -}}

{{- define "child2" -}}
{{- .Values.global.global_common_key -}}
{{- end -}}

{{- define "child3" -}}
{{- .Values.global.global_parent1_key -}}
{{- end -}}

{{- define "child4" -}}
{{- .Values.global.global_child1_level1_chart1_key -}}
{{- end -}}

{{/*wrong: */}}
{{- define "child5" -}}
{{- .Values.global.global_child_level2_chart1_key -}}
{{- end -}}