---
title: .editorconfig
description: Formatting standards using .editorconfig
published: true
date: 2024-05-05T19:19:38.337Z
tags: 
editor: markdown
dateCreated: 2024-05-05T18:30:37.455Z
---

# Standardization
These .editorconfig files are broken down into language specific sections.

Always include this global portion:
```editorconfig
root = true

[*]
charset = utf-8
trim_trailing_whitespace = true
end_of_line = lf
insert_final_newline = true
indent_style = space
```
---

# Programming Languages

## Nix
Using nixfmt-rfc-style
```editorconfig
[*.nix]
indent_size = 2
insert_final_newline = false
```

## Python
Using pycodestyle
```editorconfig
[*.{py,py3}]
indent_size = 4
```

## Node.js
Using prettier
```editorconfig
[*.{cjs,mjs,js,ts,jsx,tsx}]
indent_size = 2
```

## Rust
Using cargo fmt
```editorconfig
[*.rs,Cargo.toml]
indent_size = 4
insert_final_newline = false
```

# Markup Languages

## Markdown
```editorconfig
[*.md]
indent_size = 2
trim_trailing_whitespace = false
insert_final_newline = false
```

# Data Storage Files

## JSON
```editorconfig
[*.{json,json5}]
indent_size = 2
```

## CSV
```editorconfig
[*.csv]
indent_size = 0
```