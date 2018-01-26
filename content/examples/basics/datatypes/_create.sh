#!/bin/bash

cd $(dirname $0)
MY_LAYOUT_BASE="../../../../layouts"

THE_EXAMPLES=""
THE_EXAMPLES="$THE_EXAMPLES string  "
THE_EXAMPLES="$THE_EXAMPLES int     "
THE_EXAMPLES="$THE_EXAMPLES float   "
THE_EXAMPLES="$THE_EXAMPLES bool    "
THE_EXAMPLES="$THE_EXAMPLES array   "
THE_EXAMPLES="$THE_EXAMPLES map     "
THE_EXAMPLES="$THE_EXAMPLES complex "
THE_EXAMPLES="$THE_EXAMPLES time    "

MY_SECTION="example"
MY_PATH="$(basename $(dirname $(pwd)))/$(basename $(pwd))"
MY_LAYOUT_BASE=${MY_LAYOUT_PATH}/${MY_SECTION}s/${MY_PATH}

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