---
weight: 150
description: "Positional or named parameters"
---

https://gohugo.io/templates/shortcode-templates/

1) {{< get-parameters-generic-01 >}}                                                 
2) {{< get-parameters-generic-01 1 2 3 4 5 >}}                                       
3) {{< get-parameters-generic-01 "1" "2" "3" >}}                                     
4) {{< get-parameters-generic-01 arg1="1" arg5="foo" >}}                             
5) {{< get-parameters-generic-01 arg2="2" arg4="4" arg1="1" arg5="5" arg3="3" >}}    
6) {{< get-parameters-generic-01 arg4="" arg1="42" >}}                               
   {{/* arg4 => default value, not emtpy */}}                                       
7)
{{< get-parameters-generic-01 
arg1="42" 
arg5="bar" 
>}}                           


### not cool:
{{< get-parameters-generic-01 arg1=42 arg5="foo" >}}                             
see [get-parameters-test-02](../get-parameters-test-02)

So **always** quote using **`"`**
