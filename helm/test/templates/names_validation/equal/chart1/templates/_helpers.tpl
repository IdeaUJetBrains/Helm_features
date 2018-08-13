{{- define "some.template1" -}}
  {{- template "some.template1" }}
{{- end -}}
{{- define "some.template1" -}}
  {{- template "some.template1" }}
{{- end -}}
{{- define "some.template1" -}}
  {{- include "some.template1" }}
{{- end -}}

