#!/bin/bash

cd (dirname $0)

THE_BASICS=""
THE_BASICS="$THE_BASICS actions         "
THE_BASICS="$THE_BASICS arguments       "
THE_BASICS="$THE_BASICS comments        "
THE_BASICS="$THE_BASICS conditions      "
THE_BASICS="$THE_BASICS context_the_dot "
THE_BASICS="$THE_BASICS datatypes       "
THE_BASICS="$THE_BASICS literals        "
THE_BASICS="$THE_BASICS pipelines       "
THE_BASICS="$THE_BASICS text_and_spaces "
THE_BASICS="$THE_BASICS variables       "

for MY_BASIC in ${THE_BASICS}; do
  echo ${MY_BASIC}
cat > "${MY_BASIC}.md" <<EOF
---
layout: "basics/${MY_BASIC}"
weight: 100
---
EOF

MY_LAYOUT_PATH="../../../layouts/examples/basics"
if [ ! -d "${MY_LAYOUT_PATH}" ]; then mkdir -p "${MY_LAYOUT_PATH}"; fi
if [ ! -e "${MY_LAYOUT_PATH}/${MY_BASIC}.html" ]; then
cat > "${MY_LAYOUT_PATH}/${MY_BASIC}.html" <<EOF
{{/* __HIDE__ */}} {{- define "example" }}<pre>

{{/* ${MY_BASIC} */}}

{{/* __HIDE__ */}} </pre>{{ end }}
EOF
fi

done
