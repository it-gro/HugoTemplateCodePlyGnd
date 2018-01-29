#!/bin/bash

cd $(dirname $0)
MY_LAYOUT_BASE="../../../../layouts"

THE_DEMOS=""
THE_DEMOS="$THE_DEMOS string  "
THE_DEMOS="$THE_DEMOS int     "
THE_DEMOS="$THE_DEMOS float   "
THE_DEMOS="$THE_DEMOS bool    "
THE_DEMOS="$THE_DEMOS array   "
THE_DEMOS="$THE_DEMOS map     "
THE_DEMOS="$THE_DEMOS complex "
THE_DEMOS="$THE_DEMOS time    "

MY_SECTION="example"
MY_BLOCK="render"
MY_PATH="$(basename $(dirname $(pwd)))/$(basename $(pwd))"
MY_LAYOUT_BASE=${MY_LAYOUT_PATH}/${MY_SECTION}s/${MY_PATH}

MY_WEIGHT=100
for MY_DEMO in ${THE_DEMOS}; do
  echo ${MY_DEMO}
  cat > "${MY_DEMO}.md" <<EOF
---
layout: "${MY_PATH}/${MY_DEMO}"
weight: ${MY_WEIGHT}
---
EOF

  if [ ! -d "${MY_LAYOUT_PATH}" ]; then mkdir -p "${MY_LAYOUT_PATH}"; fi
  if [ ! -e "${MY_LAYOUT_PATH}/${MY_DEMO}.html" ]; then
    echo "${MY_LAYOUT_PATH}/${MY_DEMO}.html"
  cat > "${MY_LAYOUT_PATH}/${MY_DEMO}.html" <<EOF
{{/* __HIDE__ */}} {{- define "${MY_BLOCK}" }}
{{/* ${MY_DEMO} */}}

{{/* __HIDE__ */}} {{- end }}
EOF
  fi

  let MY_WEIGHT+=10
done
