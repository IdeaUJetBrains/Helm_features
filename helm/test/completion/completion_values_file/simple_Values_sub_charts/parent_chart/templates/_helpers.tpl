{{/*should not be ok*/}}
{{- define "parent_template" -}}
test_parent_global_tpl: {{.Values.global.new_global_key_sub_child}}
{{- end -}}
{{/*Ok*/}}
{{- define "parent_should_be_ok_template" -}}
should_be_ok_key: {{.Values.child_level1_chart.global.new_global_key_child}}
{{- end -}}
{{/*Ok*/}}
{{- define "parent_ok_template" -}}
ok_key: {{.Values.global.test_g_p_1}}
{{- end -}}
{{- define "parent_usual_key_template" -}}
usual_key: {{.Values.parent_test1}}
{{- end -}}