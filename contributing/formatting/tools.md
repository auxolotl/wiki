---
title: Formatting tools
description: 
published: true
date: 2024-05-19T12:42:57.904Z
tags: 
editor: markdown
dateCreated: 2024-05-19T12:41:51.196Z
---

# Formatting tools
Please use the standard formatting tools for your language, and obey them over all Aux formatting guidelines. If there are no listed formatting tools, you should use the tool which is most commonly used for your language and add it to this page.

> You should not configure your formatter, you should instead use its default options
{.is-info}

## Using treefmt

// TODO

## Formatting manually

If you'd prefer to avoid treefmt, you can set up the language formatters manually.

### Nix

For Nix, use [`pkgs.nixfmt-rfc-style`](https://search.nixos.org/packages?channel=unstable&show=nixfmt-rfc-style&from=0&size=50&sort=relevance&type=packages&query=nixfmt-rfc-style).

`nixfmt-rfc-style` is based on [`nixfmt`](https://github.com/nixos/nixfmt), however its style differs significantly from the original nixfmt, as its style is based on [NixOS RFC 166](https://github.com/NixOS/rfcs/pull/166). Please don't use the original `nixfmt` style.

#### Using nixfmt {.tabset}
##### With flakes

If you're using flakes, you can set your nix formatter in your `flake.nix` outputs.

> As of nixpkgs release `23.11`, `nixfmt-rfc-style` is currently only available in unstable channels, so you may need to introduce an unstable nixpkgs input if you do not already have one.
{.is-info}
```nix
{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
  };

  outputs = { nixpkgs, ... }: {
    formatter.x86_64-linux = nixpkgs.legacyPackages.x86_64-linux.nixfmt-rfc-style;
  };
}
```
...and then use the formatter by running `nix fmt`
```bash
$ nix fmt
```

If you're using `direnv`, you may get an error like this
```
nixfmt: ./.direnv/flake-inputs/99iafi55mrsflh7agb1aqvgcdxraa612-source: openTempFileWithDefaultPermissions: permission denied (Read-only file system)
```

As a workaround, you can specify the files to format manually

```bash
$ nix fmt **/*.nix
```

##### With nix-shell

> As of nixpkgs release `23.11`, `nixfmt-rfc-style` is currently only available in unstable channels.
{.is-info}

```
$ nix-shell -p nixfmt-rfc-style
```

Once you've done so, you can format all files with

```
$ nixfmt **/*.nix
```

##### With nix shell

> As of nixpkgs release `23.11`, `nixfmt-rfc-style` is currently only available in unstable channels.
{.is-info}

```
$ nix shell github:nixos/nixpkgs#nixfmt-rfc-style
```

Once you've done so, you can format all files with

```
$ nixfmt **/*.nix
```

### JavaScript, TypeScript
For JavaScript or TypeScript, use [**Prettier**](https://prettier.io/). 

For more details, you can refer to [the prettier installation guide](https://prettier.io/docs/en/install).

### Python

# Linting tools

