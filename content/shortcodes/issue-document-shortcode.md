---
weight: 100
description: "document shortcode"
---

## Works

```
foo {{</* issue-document-shortcode "42" */>}} bar
```

```
more {{</* issue-document-shortcode "42" >}} here {{< issue-document-shortcode "24" */>}} end
```


foo {{< issue-document-shortcode "42" >}} bar

more {{< issue-document-shortcode "42" >}} here {{< issue-document-shortcode "24" >}} end


## Bug (fixed in 0.39)

```
foo {{</* issue-document-shortcode "*!/" */>}} bar
```

```
more {{</* issue-document-shortcode "*!/" >}} here {{< issue-document-shortcode "24" */>}} end
```

foo {{< issue-document-shortcode "*/" >}} bar

more {{< issue-document-shortcode "*/" >}} here {{< issue-document-shortcode "24" >}} end
