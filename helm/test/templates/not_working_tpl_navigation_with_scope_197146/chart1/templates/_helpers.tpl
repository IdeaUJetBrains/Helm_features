{{- define "common.annote" -}}
{{- range $k, $v := . }}
{{ $k | quote }}: {{ $v | quote }}
{{- end -}}
{{- end -}}
{{- define "common.name" -}}
test
{{- end -}}
{{- define "common.port" -}}
1111
{{- end -}}
