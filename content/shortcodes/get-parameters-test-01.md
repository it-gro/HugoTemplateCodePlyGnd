---
weight: 100
description: "Parameter passing by position"
---

https://gohugo.io/templates/shortcode-templates/   
https://discourse.gohugo.io/t/shortcode-doesnt-accept-number/1535/3

Datatype is always **string**

*  {{</* get-parameters-test-01 "foo" */>}}    
  => {{< get-parameters-test-01 "foo" >}}
*  {{</* get-parameters-test-01 "foo\nbar" */>}}    
  => {{< get-parameters-test-01 "foo\nbar" >}} *"\" gets quoted with "\"*
*  {{</* get-parameters-test-01 false */>}}    
  => {{< get-parameters-test-01 false >}} *boolean values is true (non emtpy)*
*  {{</* get-parameters-test-01 1     */>}}    
  => {{< get-parameters-test-01 1     >}} 
*  {{</* get-parameters-test-01 "0.5" */>}}    
  => {{< get-parameters-test-01 "0.5" >}} 
*  {{</* get-parameters-test-01 "" */>}}    
  => {{< get-parameters-test-01 "" >}} 
*  {{</* get-parameters-test-01 1e3   */>}}    
  => {{< get-parameters-test-01 1e3    >}} *not 1000*
    
A) {{</* get-parameters-test-01 'foo' */>}}    
=>  
unrecognized character in shortcode action: U+0027 '''. Note:
Parameters with non-alphanumeric args must be quoted

B) {{</* get-parameters-test-01 `foo` */>}} {{/* written as \`foo\` /*}}  
=>  
unrecognized character in shortcode action: U+0060 '`'. Note:
Parameters with non-alphanumeric args must be quoted

C) {{</* get-parameters-test-01 0.5 */>}}    
=>  
unrecognized character in shortcode action: U+002E '.'. Note:
Parameters with non-alphanumeric args must be quoted
