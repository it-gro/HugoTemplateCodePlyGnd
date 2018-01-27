# Hugo Templating Playground

This is a Playground for Hugo Templates [Hugo](https://gohugo.io/).

GitHub Page: https://it-gro.github.io/HugoTemplatingPlayground/

### Playground is for

* Syntax
  * Literals
  * Comments
  * Text and Spaces
  * Datatypes
  * Variables
  * Arguments
  * Conditions
  * Range
  * With
* Functions
* Variables

### but not for

* any html, css, js stuff
* hugo template lookup order - but a trick is shown how to trace. Remove the comment in [config.toml](config.toml):

```toml
[params]
  #traceFlags = "layout-name:baseof"
```

### How to start:

```bash
git clone git@github.com:it-gro/HugoTemplatingPlayground.git
cd HugoTemplatingPlayground
hugo -v -w server --disableFastRender --navigateToChanged --config config.toml,config.local.toml
```

http://localhost:1313

