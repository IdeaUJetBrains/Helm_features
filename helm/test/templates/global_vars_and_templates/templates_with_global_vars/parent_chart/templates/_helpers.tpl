{{- define "parent1" -}}
{{- .Values.global.global_common_key_different -}}
{{- end -}}

{{- define "parent2" -}}
{{- .Values.global.global_common_key -}}
{{- end -}}

{{- define "parent3" -}}
{{- .Values.global.global_parent1_key -}}
{{- end -}}

{{/*wrong: */}}
{{- define "parent4" -}}
{{- .Values.global.global_child1_level1_chart1_key -}}
{{- end -}}

{{/*wrong: */}}
{{- define "parent5" -}}
{{- .Values.global.global_child_level2_chart1_key -}}
{{- end -}}

