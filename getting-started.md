---
title: Getting Started Guide
description: A quick guide to getting started with installing and using Auxolotl.
published: false
date: 2024-05-11T20:30:05.302Z
tags: installation, tutorial
editor: markdown
dateCreated: 2024-05-05T15:44:03.224Z
---

> **This page is outdated**
> After the [roadmap changes](https://forum.aux.computer/t/updates-and-clarifications-to-our-roadmap/593) this page should no longer refer to `auxolotl/nixpkgs`. It would be good to have a migration guide, but it would require serious modification of this page. Do not follow the instructions on this page. It is only available to logged-in users.
{.is-danger}

# Getting Started With Auxolotl

There are a few ways you can get started with Aux:

- [I want to install the full distribution.](#installing-the-aux-distribution)
- [I want to convert my existing NixOS install to Auxolotl](#converting-nixos-to-aux)
- [I just want to install the Aux package manager and command-line tool.](#installing-the-aux-command-line-tool)

Other ways to use Aux:

- [Flake templates](#flake-templates)

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

If you have an existing NixOS installation and want to convert it to use Aux, all you need to do is change your `nixpkgs` source to use the Auxolotl nixpkgs repository (substituting `<release>` with desired release - such as `unstable` or `23.11`).

### Channels

To change your `nixpkgs` channel to pull from Aux, run the following command:

```shell=
nix-channel --add https://github.com/auxolotl/nixpkgs/nixos-<release> nixpkgs
```

On your next `nix-channel --update` or `nixos-rebuild --upgrade`, Aux will get pulled.

### Flakes

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

## Other ways to use Aux

### Flake templates

[Download from GitHub](https://github.com/auxolotl/templates)

Aux provides [templates](https://github.com/auxolotl/templates) for you to use to bootstrap a default Nix system with Aux. These include templates for Linux, Darwin (macOS), and home-manager.