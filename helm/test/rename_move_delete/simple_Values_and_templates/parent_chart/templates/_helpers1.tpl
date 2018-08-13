{{- define "parent1" -}}
{{- .Values.global.global_common_key_different -}}
{{- .Chart.Name -}}
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


{{- define "parent10" -}}
{{- .Values.parent1_test1 -}}
{{- end -}}

{{- define "parent11" -}}
{{- .Values.child_level1_chart1.common_key_different_values -}}
{{- end -}}

{{- define "parent12" -}}
{{- .Values.child_level1_chart1.child_level2_chart1.common_key_different_values -}}
{{- end -}}