#!/bin/bash

cd $(dirname $0)
MY_LAYOUT_BASE="../../../layouts"

THE_DEMOS=""

#THE_DEMOS="$THE_DEMOS .AddDate              "
#THE_DEMOS="$THE_DEMOS .Format               "
#THE_DEMOS="$THE_DEMOS .Get                  "
#THE_DEMOS="$THE_DEMOS .GetPage              "
#THE_DEMOS="$THE_DEMOS .Param                "
#THE_DEMOS="$THE_DEMOS .Scratch              "
#THE_DEMOS="$THE_DEMOS .Unix                 "

THE_DEMOS="$THE_DEMOS _AddDate              "
THE_DEMOS="$THE_DEMOS _Format               "
THE_DEMOS="$THE_DEMOS _Get                  "
THE_DEMOS="$THE_DEMOS _GetPage              "
THE_DEMOS="$THE_DEMOS _Param                "
THE_DEMOS="$THE_DEMOS _Scratch              "
THE_DEMOS="$THE_DEMOS _Unix                 "

THE_DEMOS="$THE_DEMOS index_                "

THE_DEMOS="$THE_DEMOS Math                  "
THE_DEMOS="$THE_DEMOS absLangURL            "
THE_DEMOS="$THE_DEMOS absURL                "
THE_DEMOS="$THE_DEMOS after                 "
THE_DEMOS="$THE_DEMOS apply                 "
THE_DEMOS="$THE_DEMOS base64                "
THE_DEMOS="$THE_DEMOS chomp                 "
THE_DEMOS="$THE_DEMOS cond                  "
THE_DEMOS="$THE_DEMOS countrunes            "
THE_DEMOS="$THE_DEMOS countwords            "
THE_DEMOS="$THE_DEMOS dateFormat            "
THE_DEMOS="$THE_DEMOS default               "
THE_DEMOS="$THE_DEMOS delimit               "
THE_DEMOS="$THE_DEMOS dict                  "
THE_DEMOS="$THE_DEMOS echoParam             "
THE_DEMOS="$THE_DEMOS emojify               "
THE_DEMOS="$THE_DEMOS eq                    "
THE_DEMOS="$THE_DEMOS errorf                "
THE_DEMOS="$THE_DEMOS fileExists            "
THE_DEMOS="$THE_DEMOS findRE                "
THE_DEMOS="$THE_DEMOS first                 "
THE_DEMOS="$THE_DEMOS float                 "
THE_DEMOS="$THE_DEMOS ge                    "
THE_DEMOS="$THE_DEMOS getenv                "
THE_DEMOS="$THE_DEMOS gt                    "
THE_DEMOS="$THE_DEMOS hasPrefix             "
THE_DEMOS="$THE_DEMOS highlight             "
THE_DEMOS="$THE_DEMOS htmlEscape            "
THE_DEMOS="$THE_DEMOS htmlUnescape          "
THE_DEMOS="$THE_DEMOS humanize              "
THE_DEMOS="$THE_DEMOS i18n                  "
THE_DEMOS="$THE_DEMOS imageConfig           "
THE_DEMOS="$THE_DEMOS in                    "
THE_DEMOS="$THE_DEMOS int                   "
THE_DEMOS="$THE_DEMOS intersect             "
THE_DEMOS="$THE_DEMOS isset                 "
THE_DEMOS="$THE_DEMOS jsonify               "
THE_DEMOS="$THE_DEMOS lang.NumFmt           "
THE_DEMOS="$THE_DEMOS last                  "
THE_DEMOS="$THE_DEMOS le                    "
THE_DEMOS="$THE_DEMOS lower                 "
THE_DEMOS="$THE_DEMOS lt                    "
THE_DEMOS="$THE_DEMOS markdownify           "
THE_DEMOS="$THE_DEMOS md5                   "
THE_DEMOS="$THE_DEMOS ne                    "
THE_DEMOS="$THE_DEMOS now                   "
THE_DEMOS="$THE_DEMOS partialCached         "
THE_DEMOS="$THE_DEMOS plainify              "
THE_DEMOS="$THE_DEMOS pluralize             "
THE_DEMOS="$THE_DEMOS print                 "
THE_DEMOS="$THE_DEMOS printf                "
THE_DEMOS="$THE_DEMOS println               "
THE_DEMOS="$THE_DEMOS querify               "
THE_DEMOS="$THE_DEMOS range                 "
THE_DEMOS="$THE_DEMOS readDir               "
THE_DEMOS="$THE_DEMOS readFile              "
THE_DEMOS="$THE_DEMOS ref                   "
THE_DEMOS="$THE_DEMOS relLangURL            "
THE_DEMOS="$THE_DEMOS relURL                "
THE_DEMOS="$THE_DEMOS relref                "
THE_DEMOS="$THE_DEMOS render                "
THE_DEMOS="$THE_DEMOS replace               "
THE_DEMOS="$THE_DEMOS replaceRE             "
THE_DEMOS="$THE_DEMOS safeCSS               "
THE_DEMOS="$THE_DEMOS safeHTML              "
THE_DEMOS="$THE_DEMOS safeHTMLAttr          "
THE_DEMOS="$THE_DEMOS safeJS                "
THE_DEMOS="$THE_DEMOS safeURL               "
THE_DEMOS="$THE_DEMOS seq                   "
THE_DEMOS="$THE_DEMOS sha                   "
THE_DEMOS="$THE_DEMOS shuffle               "
THE_DEMOS="$THE_DEMOS singularize           "
THE_DEMOS="$THE_DEMOS slice                 "
THE_DEMOS="$THE_DEMOS slicestr              "
THE_DEMOS="$THE_DEMOS sort                  "
THE_DEMOS="$THE_DEMOS split                 "
THE_DEMOS="$THE_DEMOS string                "
THE_DEMOS="$THE_DEMOS strings.TrimLeft      "
THE_DEMOS="$THE_DEMOS strings.TrimPrefix    "
THE_DEMOS="$THE_DEMOS strings.TrimRight     "
THE_DEMOS="$THE_DEMOS strings.TrimSuffix    "
THE_DEMOS="$THE_DEMOS substr                "
THE_DEMOS="$THE_DEMOS time                  "
THE_DEMOS="$THE_DEMOS title                 "
THE_DEMOS="$THE_DEMOS trim                  "
THE_DEMOS="$THE_DEMOS truncate              "
THE_DEMOS="$THE_DEMOS union                 "
THE_DEMOS="$THE_DEMOS uniq                  "
THE_DEMOS="$THE_DEMOS upper                 "
THE_DEMOS="$THE_DEMOS urlize                "
THE_DEMOS="$THE_DEMOS urls.Parse            "
THE_DEMOS="$THE_DEMOS where                 "
THE_DEMOS="$THE_DEMOS with                  "

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
  MY_DEMO_SMALL=$(echo ${MY_DEMO} | tr [A-Z] [a-z])  
  echo ${MY_DEMO}
  if [ ! -e "${MY_DEMO}.md" ]; then
  cat > "${MY_DEMO}.md" <<EOF
---
layout: "${MY_PATH}/${MY_DEMO}"
weight: ${MY_WEIGHT}
---
EOF
  fi


  if [ ! -d "${MY_LAYOUT_PATH}" ]; then mkdir -p "${MY_LAYOUT_PATH}"; fi
  if [ ! -e "${MY_LAYOUT_PATH}/${MY_DEMO}.html" ]; then
    echo "${MY_LAYOUT_PATH}/${MY_DEMO}.html"
  cat  > "${MY_LAYOUT_PATH}/${MY_DEMO}.html" <<EOF
{{/* __HIDE__ */}} {{- define "${MY_BLOCK}" }}
{{/* ${MY_DEMO} */}}
{{"https://gohugo.io/functions/${MY_DEMO_SMALL}" | markdownify }}

{{/* __HIDE__ */}} {{- end }}
EOF
  fi

  let MY_WEIGHT+=10
done
