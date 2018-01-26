#!/bin/bash

cd $(dirname $0)

THE_VARIABLES=""
THE_VARIABLES="$THE_VARIABLES file              "
THE_VARIABLES="$THE_VARIABLES git               "
THE_VARIABLES="$THE_VARIABLES hugo              "
THE_VARIABLES="$THE_VARIABLES menu              "
THE_VARIABLES="$THE_VARIABLES page              "
THE_VARIABLES="$THE_VARIABLES page_front_matter "
THE_VARIABLES="$THE_VARIABLES site              "
THE_VARIABLES="$THE_VARIABLES sitemap           "
THE_VARIABLES="$THE_VARIABLES taxonomy          "

for MY_VARIABLE in ${THE_VARIABLES}; do
  echo ${MY_VARIABLE}
cat > "${MY_VARIABLE}.md" <<EOF
---
layout: "variables/${MY_VARIABLE}"
weight: 100
---
EOF

MY_LAYOUT_PATH="../../../layouts/examples/variables"
if [ ! -d "${MY_LAYOUT_PATH}" ]; then mkdir -p "${MY_LAYOUT_PATH}"; fi
if [ ! -e "${MY_LAYOUT_PATH}/${MY_VARIABLE}.html" ]; then
cat > "${MY_LAYOUT_PATH}/${MY_VARIABLE}.html" <<EOF
{{/* __HIDE__ */}} {{- define "example" }}

{{/* ${MY_VARIABLE} */}}

{{/* __HIDE__ */}} {{ end }}
EOF
fi

done
