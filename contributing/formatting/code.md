---
title: .editorconfig
description: Formatting standards using .editorconfig
published: true
date: 2024-05-05T21:02:56.241Z
tags: 
editor: markdown
dateCreated: 2024-05-05T18:30:37.455Z
---

# Global
Start your `.editorconfig` file with this:
```editorconfig
root = true

[*]
charset = utf-8
trim_trailing_whitespace = true
end_of_line = lf
insert_final_newline = true
indent_style = space
```
And add any additional types you need from below, making sure to seperate each section with a new line.

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

## C and Related
```editorconfig
[*.{c,cpp,cs,h,hpp,C,H,cxx,hxx}]
indent_size = 4

[*.{sln,csproj,vbproj,vcxproj.filters,proj,projitems,shproj}]
indent_size = 2
```

## Shell Script
```editorconfig
[*.{sh,zsh,bash,bat,cmd,ps1,psm1}]
indent_size = 4
```

# Markup Languages

## Markdown
```editorconfig
[*.md]
indent_size = 2
trim_trailing_whitespace = false
insert_final_newline = false
```

## Web
```editorconfig
[*.{htm,html,less,svg,vue}]
indent_size = 2

[*.{css.sass,scss,less}]
indent_size = 2
```

# Data Storage Files

## JSON, YAML
```editorconfig
[*.{json,json5,yaml,yml,webmanifest}]
indent_size = 2
```

## TOML
```editorconfig
[*.toml]
indent_style = unset
indent_size = 0
```

## \*RC
```editorconfig
[.*rc]
indent_size = 2
```

## CSV
```editorconfig
[*.csv]
end_of_line = unset
insert_final_newline = unset
trim_trailing_whitespace = unset
indent_size = 0
indent_style = unset
```

## Lockfile
```editorconfig
[*.lock]
indent_style = unset
insert_final_newline = unset
```

## Git
```editorconfig
[*.{diff,patch}]
end_of_line = unset
insert_final_newline = unset
trim_trailing_whitespace = unset
indent_size = unset
indent_style = unset

[.{gitignore,gitreview,gitmodules}]
indent_style = unset
indent_size = 0
```

## Keys
```editorconfig
[*.{asc,key,ovpn,pem}]
end_of_line = unset
insert_final_newline = unset
trim_trailing_whitespace = unset
```

# Build Tool Files

## Make

```editorconfig
[Makefile]
indent_style = tab
```