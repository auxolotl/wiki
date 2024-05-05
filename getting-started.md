---
title: Getting Started Guide
description: A quick guide to getting started with installing and using Auxolotl.
published: true
date: 2024-05-05T15:44:03.224Z
tags: installation, tutorial
editor: markdown
dateCreated: 2024-05-05T15:44:03.224Z
---

# Getting Started With Aux

There are a few ways you can get started with Aux:

- [I want to install the full Auxolotl distribution.](#installing-the-aux-command-line-tool)
- [I want to convert my existing NixOS install to Auxolotl](#converting-nixos-to-aux)
- [I just want to install the Aux package manager and command-line tool.](#installing-the-aux-distribution)

## Installing the Aux command-line tool

Open a terminal and run this command to install Aux:

```shell=
$ TODO
```

Verify the installation by running this command:

```shell=
$ TODO
```

## Converting NixOS to Aux

If you have an existing NixOS installation and want to convert it to use Aux, all you need to do is change your `nixpkgs` input to use the Auxolotl nixpkgs repository.

Open your `flake.nix` file and change the following line:

```nix
nixpkgs.url = "github:NixOS/nixpkgs/nixos-<release>";
```

to:

```nix
nixpkgs.url = "github:auxolotl/nixpkgs/nixos-<release>";
```

## Installing the Aux distribution

==TODO==