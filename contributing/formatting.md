---
title: .editorconfig
description: Formatting standards using .editorconfig
published: true
date: 2024-05-05T18:36:09.521Z
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
```
---
Following here is the per language additions:

## Nix
```editorconfig
[*.nix]
indent_style = space
indext_size = 2
insert_final_newline = false
```