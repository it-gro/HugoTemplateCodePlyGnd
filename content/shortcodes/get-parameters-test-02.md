---
weight: 110
description: "Parameter passing positional vs named"
---

https://gohugo.io/templates/shortcode-templates/

### Positional parameters

*  {{</* get-parameters-test-02 1 2 3 */>}}   
  => {{< get-parameters-test-02 1 2 3 >}}
*  {{</* get-parameters-test-02 1 foo 3 */>}}  
  => {{< get-parameters-test-02 1 foo 3 >}}
*  {{</* get-parameters-test-02 1 foo bar 3 */>}}  
  => {{< get-parameters-test-02 1 foo bar 3 >}}
*  {{</* get-parameters-test-02 1 "foo bar" 3 */>}}  
  => {{< get-parameters-test-02 1 "foo bar" 3 >}}



### Named parameters

https://discourse.gohugo.io/t/shortcodes-best-practice-for-named-parameters-quoting/10253   
{{` always quote the values using " `}}

*  {{</* get-parameters-test-02 arg1="1" arg2="2" arg3="3" */>}}   
  => {{< get-parameters-test-02 arg1="1" arg2="2" arg3="3" >}}
*  {{</* get-parameters-test-02 arg1="1" arg2="foo" arg3="3" */>}}   
  => {{< get-parameters-test-02 arg1="1" arg2="foo" arg3="3" >}}

#### Not cool:
A) {{</* get-parameters-test-02 arg1=42 arg2="foo" */>}}   
  => {{< get-parameters-test-02 arg1=42 arg2="foo" >}}

So **always** quote using **`"`**   
you have been warned ...
