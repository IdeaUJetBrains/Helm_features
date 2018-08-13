{{- define "some.template.with.several.args" -}}
{{- default .Chart.Name .Values.global.global_common_key_different }}
{{- end -}}

{{- define "long_name.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test111" -}}
{{ .Chart.Name }}
{{- end -}}
{{- define "some.template1" -}}
{{- template "long_name.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test.test111" . }}
{{- end -}}

{{- define "" -}}
{{- template "" }}
{{- end -}}

{{- define "   " -}}
{{- template "   " }}
{{- end -}}

{{/*--------------------------------------*/}}
{{- define "12345" -}}
{{ .Chart.Name }}
{{- end -}}
{{- define "test_tpl_1" -}}
test1: {{- template "12345" . }}
{{- end -}}

{{- define "1_--=1+_)(*&^%$#@!~`,.<>/?@#$%^&*(()_+=ZAsxQWqw{}[]" -}}
{{ .Chart.Name }}
{{- end -}}
{{- define "test_tpl_2" -}}
test2: {{- template "1_--=1+_)(*&^%$#@!~`,.<>/?@#$%^&*(()_+=ZAsxQWqw{}[]" . }}
{{- end -}}

{{- define "---" -}}
{{ .Chart.Name }}
{{- end -}}
{{- define "test_tpl_3" -}}
test3: {{- template "---" . }}
{{- end -}}

{{- define "1 2 3 4" -}}
{{ .Chart.Name }}
{{- end -}}
{{- define "test_tpl_4" -}}
test4: {{- template "1 2 3 4" . }}
{{- end -}}

{{- define "." -}}
{{ .Chart.Name }}
{{- end -}}
{{- define "test_tpl_5" -}}
test5: {{- template "." . }}
{{- end -}}

{{- define "test" -}}
{{ .Chart.Name }}
{{- end -}}
{{- define "test_tpl_6" -}}
test6: {{- template "."  . }}
{{- end -}}

{{- define "1 2 3 " -}}
{{ .Chart.Name }}
{{- end -}}
{{- define "test_tpl_7" -}}
test7: {{- template "1 2 3 " . }}
{{- end -}}
{{/*--------------------------------------*/}}