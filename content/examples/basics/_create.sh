#!/bin/bash

cd $(dirname $0)
MY_LAYOUT_BASE="../../../layouts"

THE_EXAMPLES=""
THE_EXAMPLES="$THE_EXAMPLES literals        "
THE_EXAMPLES="$THE_EXAMPLES variables       "
THE_EXAMPLES="$THE_EXAMPLES arguments       "
THE_EXAMPLES="$THE_EXAMPLES context_the_dot "

MY_SECTION="example"
MY_PATH="$(basename $(dirname $(pwd)))/$(basename $(pwd))"
if [ -d ${MY_LAYOUT_BASE}/${MY_SECTION}s/${MY_PATH} ]; then
    MY_LAYOUT_PATH=${MY_LAYOUT_BASE}/${MY_SECTION}s/${MY_PATH}
else
    MY_LAYOUT_PATH=${MY_LAYOUT_BASE}/${MY_PATH}
fi


MY_WEIGHT=100
for MY_EXAMPLE in ${THE_EXAMPLES}; do
  echo ${MY_EXAMPLE}
  cat > "${MY_EXAMPLE}.md" <<EOF
---
layout: "${MY_PATH}/${MY_EXAMPLE}"
weight: ${MY_WEIGHT}
---
EOF

  if [ ! -d "${MY_LAYOUT_PATH}" ]; then mkdir -p "${MY_LAYOUT_PATH}"; fi
  if [ ! -e "${MY_LAYOUT_PATH}/${MY_EXAMPLE}.html" ]; then
    echo "${MY_LAYOUT_PATH}/${MY_EXAMPLE}.html"
  cat > "${MY_LAYOUT_PATH}/${MY_EXAMPLE}.html" <<EOF
{{/* __HIDE__ */}} {{- define "${MY_SECTION}" }}
{{/* ${MY_EXAMPLE} */}}

{{/* __HIDE__ */}} {{- end }}
EOF
  fi

  let MY_WEIGHT+=10
done
