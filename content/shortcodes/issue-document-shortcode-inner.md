---
weight: 100
description: "document shortcode (inner)"
---

## Works

```
foo {{</* issue-document-shortcode-inner "42" /*/>}} bar
```

```
more {{</* issue-document-shortcode-inner "42" >}} here {{< /issue-document-shortcode-inner */>}} end
```


foo {{< issue-document-shortcode-inner "42" />}} bar

more {{< issue-document-shortcode-inner "42" >}} here {{< /issue-document-shortcode-inner >}} end


## Bug (fixed in 0.39)

```
foo {{</* issue-document-shortcode-inner "*!/" /*/>}} bar
```

```
more {{</* issue-document-shortcode-inner "*!/" >}} here {{< /issue-document-shortcode-inner */>}} end
```

foo {{< issue-document-shortcode-inner "*/" />}} bar

more {{< issue-document-shortcode-inner "*/" >}} here {{< /issue-document-shortcode-inner >}} end
