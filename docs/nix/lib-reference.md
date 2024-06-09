---
title: Nix built-in and lib functions
description: An overview of the various functions available in Nix and Nixpkgs lib.
published: true
date: 2024-06-09T16:32:39.315Z
tags: nix, nixpkgs
editor: markdown
dateCreated: 2024-06-09T16:32:18.232Z
---

# Introduction to Nix builtins and Nixpkgs `lib`

This page is an overview of the Nix built-in functions, and functions available in Nixpkgs' `lib`.

## Built-in functions (`builtins`)

Built-ins are core language functions built directly into the Nix language evaluator. These functions are available through the global `builtins` constant.

Resources:
* [Nix manual](https://nix.dev/manual/nix/2.22/language/builtins)
* [Nixpkgs lib reference by teu5us](https://teu5us.github.io/nix-lib.html#nix-builtin-functions)

## Assertion functions (`lib.asserts`)

Assertions are generally used to check and/or enforce certain requirements in your configuration files. They're often used to handle conflicts between features or dependencies.

Resources:
* [Nix manual](https://nix.dev/manual/nix/2.22/language/constructs.html?highlight=assertion#assertions)
* [Nixpkgs source](https://github.com/NixOS/nixpkgs/blob/master/lib/asserts.nix)

## Attribute-set functions (`lib.attrset`)

Attribute sets are collections of name-value pairs (called _attributes_) enclosed in curly braces ( `{ }` )

Resources:
* [Nix manual](https://nix.dev/manual/nix/2.22/language/values.html?highlight=attribute%20set#attribute-set)
* [Nixpkgs lib reference by teu5us](https://teu5us.github.io/nix-lib.html#attribute-set-functions)
* [Nixpkgs source](https://github.com/NixOS/nixpkgs/blob/master/lib/attrsets.nix)

## Customization functions (`lib.customization`)

Customization functions let you override derivations and packages.

Sources:
* [Nixpkgs lib reference by teu5us](https://teu5us.github.io/nix-lib.html#customisation-functions)
* [Nixpkgs source](https://github.com/NixOS/nixpkgs/blob/master/lib/customisation.nix)

## Debugging functions (`lib.debug`)

Debug functions are useful for debugging Nix expressions. 
* `trace`-like functions take two values, print the first to stderr and return the second.
* `traceVal`-like functions take one argument which both printed and returned.
* `traceSeq`-like functions fully evaluate their traced value before printing (not just to “weak head normal form” like trace does by default).
* Functions that end in `-Fn` take an additional function as their first argument, which is applied to the traced value before it is printed.

Resources:
* [Nixpkgs source](https://github.com/NixOS/nixpkgs/blob/master/lib/debug.nix)

## Generator functions (`lib.generators`)

Generators can create various file formats from Nix data structures. They all use a similar interface: `generator { config-attrs } data`. `config-attrs` are used to overwrite the generator's default attributes.

Resources:
* [Nixpkgs source](https://github.com/NixOS/nixpkgs/blob/master/lib/generators.nix)

## List manipulation functions (`lib.lists`)

List manipulation functions let you create and manipulate lists.

Resources:
* [Nixpkgs source](https://github.com/NixOS/nixpkgs/blob/master/lib/lists.nix)

## Meta functions (`lib.meta`)

Meta functions override metadata attributes about derivations, packages, attribute sets, and other Nix constructs.

Resources:
* [Nixpkgs source](https://github.com/NixOS/nixpkgs/blob/master/lib/meta.nix)

## Modules functions (`lib.modules`)

Modules functions let you define, evaluate, and merge Nix modules. They also include functions to import module definitions from other formats, like JSON and TOML.

Two of the most commonly used functions in this set are:

* `mkIf`, which lets you adds conditional statements to your modules, and
* `mkMerge`, which lets you combine multiple module definitions into one.

Resources:
* [Nixpkgs source](https://github.com/NixOS/nixpkgs/blob/master/lib/modules.nix)

## NixOS / Nixpkgs option handling functions (`lib.options`)

Options are attributes commonly used to enable and configure Nix modules. Options are declared using the `mkOption` function.

Sources:
- [NixOS Wiki](https://nixos.wiki/wiki/Declaration)
- [My NixOS](https://mynixos.com/help/nixos-options)
- [Nixpkgs source](https://github.com/NixOS/nixpkgs/blob/master/lib/options.nix)

## Source filtering functions (`lib.sources`)

Source filtering functions change how sources are copied to the Nix store. For example, if you want to add a Git repository to your Nix store, but don't want to include the `.git` folder, you can use `lib.sources.cleanSource ./folder`.

Sources:
* [Nixpkgs lib reference by teu5us](https://teu5us.github.io/nix-lib.html#source-filtering-functions)
* [Nixpks source](https://github.com/NixOS/nixpkgs/blob/master/lib/sources.nix)

## String manipulation functions (`lib.strings`)

String manipulation functions are used to create, manipulate, and parse strings (i.e. text). Common uses include:

- Exporting strings to different formats (`lib.toJSON`)
- Retrieving specific characters from a string (`lib.elem`, `lib.elemAt`, `lib.substring`, etc.)
- Checking if a string is a certain type (`lib.isInt`, `lib.isPath`, etc.)

Sources:
* [Nixpkgs lib reference by teu5us](https://teu5us.github.io/nix-lib.html#string-manipulation-functions)
* [Nixpkgs source](https://github.com/NixOS/nixpkgs/blob/master/lib/strings.nix)

## Miscellaneous functions (`lib.trivial`)

Miscellaneous functions are functions that don't fit under any other category. This is a grab bag of different functions, including:

- Math functions (`lib.trivial.min`, `lib.trivial.max`, etc.)
- Comparison operators (`lib.trivial.or`, `lib.trivial.and`, etc.)
- Bitwise comparison operators (`lib.trivial.bitAnd`, `lib.trivial.bitOr`, etc.)
- Getting the current version/release of Nix (`lib.trivial.version`, `lib.trivial.release`)
    - This also includes functions to compare the current version/release against a specific version/release, in order to conditionally enable features (`lib.trivial.oldestSupportedRelease`, `lib.trivial.isInOldestRelease`)
- Error and exception-handling functions (`lib.trivial.warn`, `lib.trivial.throwIf`, etc.)

Resources:
* [Nixpkgs lib reference by teu5us](https://teu5us.github.io/nix-lib.html#miscellaneous-functions)
* [Nixpkgs source](https://github.com/NixOS/nixpkgs/blob/master/lib/trivial.nix)

## Versions functions (`lib.versions`)

Versions functions are for parsing version numbers from a string. This works well in tandem with `lib.trivial.version`, which retrieves the current Nixpkgs version.

Resources:
* [Nixpkgs lib reference by teu5us](https://teu5us.github.io/nix-lib.html#versions-functions)
* [Nixpkgs source](https://github.com/NixOS/nixpkgs/blob/master/lib/versions.nix)