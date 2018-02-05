---
weight: 100
description: "button"
---

## Test
foo {{< button href="/handbook/toc/" class="btn btn-white" >}}Read more{{< /button >}} bar
foo {{< button href="/handbook/toc/" class="w3-button w3-ripple w3-theme-l3" >}}Read more{{< /button >}} bar

{{< echo 1 2 3 >}}hello world{{< /echo >}}

{{< echo 10 11 12 />}}
{{% echo 20 21 22 %}}hello **world**{{% /echo %}}
foo bar
{{< echo 30 31 32 />}}


{{</* echo 10 11 12 />}}
{{% echo 20 21 22 %}}hello **world**{{% /echo %}}
foo bar
{{< echo 30 31 32 /*/>}}


{{%/* echo "foo" %}}hello **world**{{% /echo */%}}
