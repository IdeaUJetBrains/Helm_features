{{- define "parent1" -}}
test1_hepler: {{.Values.child_level1_chart1.global.global_child_key }}
test2_hepler: {{.Values.child_level1_chart1.child_level2_chart1.global.global_sub_child_key }}
{{- end -}}
