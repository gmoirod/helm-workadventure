{{/*
Expand the name of the chart.
*/}}
{{- define "workadventure.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "workadventure.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "workadventure.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "workadventure.labels" -}}
helm.sh/chart: {{ include "workadventure.chart" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "workadventure.selectorLabels" -}}
app.kubernetes.io/name: {{ include "workadventure.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "workadventure.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "workadventure.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

#######################

{{/*
Back object names
*/}}
{{- define "workadventure.back.name" -}}
{{- printf "%s-%s" (include "workadventure.fullname" .) "back" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "workadventure.back.selectorLabels" -}}
{{ include "workadventure.selectorLabels" . }}
app.kubernetes.io/component: back
{{- end }}

{{/*
Common labels
*/}}
{{- define "workadventure.back.labels" -}}
{{ include "workadventure.labels" . }}
{{ include "workadventure.back.selectorLabels" . }}
{{- end }}

#######################

{{/*
Chat object names
*/}}
{{- define "workadventure.chat.name" -}}
{{- printf "%s-%s" (include "workadventure.fullname" .) "chat" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "workadventure.chat.selectorLabels" -}}
{{ include "workadventure.selectorLabels" . }}
app.kubernetes.io/component: chat
{{- end }}

{{/*
Common labels
*/}}
{{- define "workadventure.chat.labels" -}}
{{ include "workadventure.labels" . }}
{{ include "workadventure.chat.selectorLabels" . }}
{{- end }}

#######################

{{/*
ejabberd object names
*/}}
{{- define "workadventure.ejabberd.name" -}}
{{- printf "%s-%s" (include "workadventure.fullname" .) "ejabberd" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "workadventure.ejabberd.selectorLabels" -}}
{{ include "workadventure.selectorLabels" . }}
app.kubernetes.io/component: ejabberd
{{- end }}

{{/*
Common labels
*/}}
{{- define "workadventure.ejabberd.labels" -}}
{{ include "workadventure.labels" . }}
{{ include "workadventure.ejabberd.selectorLabels" . }}
{{- end }}

#######################

{{/*
icon object names
*/}}
{{- define "workadventure.icon.name" -}}
{{- printf "%s-%s" (include "workadventure.fullname" .) "icon" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "workadventure.icon.selectorLabels" -}}
{{ include "workadventure.selectorLabels" . }}
app.kubernetes.io/component: icon
{{- end }}

{{/*
Common labels
*/}}
{{- define "workadventure.icon.labels" -}}
{{ include "workadventure.labels" . }}
{{ include "workadventure.icon.selectorLabels" . }}
{{- end }}

#######################

{{/*
map-storage object names
*/}}
{{- define "workadventure.map-storage.name" -}}
{{- printf "%s-%s" (include "workadventure.fullname" .) "map-storage" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "workadventure.map-storage.selectorLabels" -}}
{{ include "workadventure.selectorLabels" . }}
app.kubernetes.io/component: map-storage
{{- end }}

{{/*
Common labels
*/}}
{{- define "workadventure.map-storage.labels" -}}
{{ include "workadventure.labels" . }}
{{ include "workadventure.map-storage.selectorLabels" . }}
{{- end }}


#######################

{{/*
play object names
*/}}
{{- define "workadventure.play.name" -}}
{{- printf "%s-%s" (include "workadventure.fullname" .) "play" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "workadventure.play.selectorLabels" -}}
{{ include "workadventure.selectorLabels" . }}
app.kubernetes.io/component: play
{{- end }}

{{/*
Common labels
*/}}
{{- define "workadventure.play.labels" -}}
{{ include "workadventure.labels" . }}
{{ include "workadventure.play.selectorLabels" . }}
{{- end }}

#######################

{{/*
uploader object names
*/}}
{{- define "workadventure.uploader.name" -}}
{{- printf "%s-%s" (include "workadventure.fullname" .) "uploader" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "workadventure.uploader.selectorLabels" -}}
{{ include "workadventure.selectorLabels" . }}
app.kubernetes.io/component: uploader
{{- end }}

{{/*
Common labels
*/}}
{{- define "workadventure.uploader.labels" -}}
{{ include "workadventure.labels" . }}
{{ include "workadventure.uploader.selectorLabels" . }}
{{- end }}

