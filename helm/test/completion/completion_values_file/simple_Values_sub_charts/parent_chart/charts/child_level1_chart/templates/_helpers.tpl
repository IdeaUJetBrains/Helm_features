{{- define "child_template" -}}
test_child_global_tpl: {{.Values.global.new_global_key_child}}
{{- end -}}
{{- define "child_ok_template" -}}
ok_key: {{.Values.global.test_g_p_1}}
{{- end -}}