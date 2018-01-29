#!/bin/bash

cd $(dirname $0)
MY_LAYOUT_BASE="../../../layouts"

THE_DEMOS=""
THE_DEMOS="$THE_DEMOS literals        "
THE_DEMOS="$THE_DEMOS variables       "
THE_DEMOS="$THE_DEMOS arguments       "
THE_DEMOS="$THE_DEMOS context_the_dot "

MY_SECTION="example"
MY_BLOCK="render"
MY_PATH="$(basename $(dirname $(pwd)))/$(basename $(pwd))"
if [ -d ${MY_LAYOUT_BASE}/${MY_SECTION}s/${MY_PATH} ]; then
    MY_LAYOUT_PATH=${MY_LAYOUT_BASE}/${MY_SECTION}s/${MY_PATH}
else
    MY_LAYOUT_PATH=${MY_LAYOUT_BASE}/${MY_PATH}
fi


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
