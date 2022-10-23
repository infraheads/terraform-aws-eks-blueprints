{{- define "externalAccount" }}
externalAccountBinding:
  keyID: {{ .externalAccountBinding.keyID | quote }}
  keySecretRef:
    key: secret
    name: {{ .name }}-acme-server-secretkey
{{- end -}}