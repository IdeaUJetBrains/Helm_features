{{- define "sub_child_template" -}}
test_sub_child_global_tpl: {{.Values.global.new_global_key_sub_child}}
{{- end -}}
{{- define "sub_child_ok_template" -}}
ok_key: {{.Values.global.test_g_p_1}}
{{- end -}}