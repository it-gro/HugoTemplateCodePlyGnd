---
weight: 100
description: "Parameter passing (datatypes)"
---

https://gohugo.io/templates/shortcode-templates/

https://discourse.gohugo.io/t/shortcode-doesnt-accept-number/1535/3   


1) {{< get-parameters-test-01 "foo" >}}    
=> []string{"foo"}   

2) {{< get-parameters-test-01 "foo\nbar" >}}    
=> []string{"foo\\nbar"} note: \n gets quoted with "\\"

3) {{< get-parameters-test-01 false >}}    
=> []string{"false"}  note: that's a string "false" - which is a true value

4) {{< get-parameters-test-01 1     >}}    
=> []string{"1"} note: the "number" 1 becomes a string "1"

5) {{< get-parameters-test-01 "0.5" >}}    
=> []string{"0.5"} 

6) {{< get-parameters-test-01 "" >}}    
=> []string{""} 

7) {{< get-parameters-test-01 1e3    >}}    
=> []string{"1e3"}  note: not 1000


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
