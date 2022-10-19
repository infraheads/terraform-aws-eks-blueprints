{{- define "externalAccount" }}
externalAccountBinding:
  keyID: {{ required "ID of the CA key that the External Account is bound to is required." .keyID | quote }}
  keySecretRef:
    {{- if .keySecretRef.key }}
    key: {{ .keySecretRef.key | quote }}
    {{- end }}
    name: {{ required "Secret name which holds the symmetric MAC key of the External Account Binding is required." .keySecretRef.name | quote }}
{{- end -}}