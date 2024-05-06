---
title: Wiki Quickstart
description: 
published: true
date: 2024-05-06T00:01:20.106Z
tags: tutorial, quickstart
editor: markdown
dateCreated: 2024-05-06T00:01:20.106Z
---

# Introduction

The Auxolotl wiki runs on [Wiki.js](https://js.wiki/), a powerful, extensible and open-source documentation software.

It's recommended that you read the official documentation for Wiki.js before you proceed, notably the [Introduction to Wiki.js](https://docs.requarks.io/guide/intro) and [Folder Structure & Tags](https://docs.requarks.io/en/guide/structure) guides. However, we'll do the best we can to link to relevant sections.

> This is a work in progress. Please help improve the documentation
{.is-warning}

# Account

## Creating an Account

To contribute to the wiki, you need a GitHub account. If you don't have one, please follow [this link](https://docs.github.com/en/get-started/start-your-journey/creating-an-account-on-github) to create one.

Once your account is set up, click the `Login` button at the top right corner and link it to this wiki.

## Profile Menu

Once logged in, you can modify your profile by accessing the `Account > Profile` menu.

There, you can also see the pages you created and modified.

# Pages

## Creating a New Page

When you create a new page, all you need to do is specify where it's going to live. This is called a path. You don't need to create the folders that lead to the page path, as the wiki does this automatically.

### Steps

1. From the top bar, click on the `New Page` button
1. Choose title, language and path of the new page then press `Select`
1. (Optional) Add [tags](#Tags) and a description
1. Choose Markdown[^1] as editor and start writing
1. (Optional) Add [assets](https://docs.requarks.io/en/guide/assets) by using the `Insert Assets` button on the left toolbar
1. If you need to modify the page details *(path, tags, ...)*, click `PAGE` on the top bar
1. Once you're satisfied with your changes, click on `CREATE`

<!-- multi-line foornote -->
[^1]:
	Conversion between `Markdown` and other editors might lead to a loss in formatting. That's why it's better to stick to one format. Currently, `Markdown` is the best choice since it's versatile and also easy to use.<br>
  More details can be found in the [Editors](https://docs.requarks.io/en/editors) guide.

### Example:

**Let's consider the following wiki structure:**

```text
 (/)
  ├── contributing
  │   └── wiki-quickstart
  ├── getting-started
  └── home
```

**We want to create two pages with the following paths:**

- `/contributing/wiki`
- `/docs/manual/unstable/install`

> There should be **no spaces in names** and **no slashes `'/'` at the end**
{.is-warning}

Since the `/contributing` path already exists, the `wiki` page will just be created under it.

However, we can see that the `docs` > `manual` > `unstable` folder structure does not exist. Therefore, the wiki will automatically create them for us and add the `install` page inside.

**Following the steps above, we end up with the following structure:**

```text
 (/)
  ├── contributing
  │   ├── wiki
  │   └── wiki-quickstart
  ├── docs
  │   └── manual
  │       └── unstable
  │           └── install
  ├── getting-started
  └── home
```

## Moving/Renaming a Page

### Steps

1. Navigate to the page you want to move
1. Go to `Page Actions` at the top right bar, or click on the `Edit Page` button at the bottom
1. Click on `Move/Rename` and choose a new path for the file
1. (Optionally) Add, remove or modify the [tags](#Tags) and description
1. Confirm with `Select`

### Example

In the  previous example, we've created a `wiki` page inside the `/contributing` path, but since we already have `wiki-quickstart` there, things might get confusing and redundant.

```text
 (/)
  ├── contributing
  │   ├── wiki
  │   └── wiki-quickstart
  ...
```

To make things clearer, we want to move the `wiki-quickstart` page under the `wiki` folder:

`/contributing/wiki-quickstart` - - -> `/contributing/wiki/quickstart`

**Following the steps above, we get the following structure:**

```text
 (/)
  ├── contributing
  │   └── wiki
  │       └── quickstart
  ...
```

Note that we nested a page `quickstart` inside another page `wiki`. This is because folders are actually just normal files, but are virtually managed as folders by the wiki. Therefore, each page is technically a folder as well.

Another way to think of it is that each folder has an initial **landing page** associated with it.

>If you wish to know more, you can read the [Folder Structure](https://docs.requarks.io/en/guide/structure#folder-structure) and [Nesting](https://docs.requarks.io/en/guide/structure#nesting) guides
{.is-info}

# Tags

Tags can be used to easily and effectively categorize pages, which makes searching by topic much faster.

When adding a new tag, you need to hit `Enter` on your keyboard for the tag to register. This means that tags can have spaces in their names. If a tag already exists, you will have the choice to select it.

> More details can be found in the [Tags](https://docs.requarks.io/en/guide/structure#tags) guide
{.is-info}

After clicking on the `Browse by Tags` button next to the search bar, you will be presented with a screen that allows you to filter pages by one or more tags.

# Markdown

You should check out the [Markdown](https://docs.requarks.io/en/editors/markdown) guide for a comprehensive list of all the wiki markdown formatting. However, here are a few useful things to keep in mind:

## Ordered Lists

When creating ordered lists, just write `1.` and the number will be automatically incremented:

```md
1. One
1. Two
1. Three
```

1. One
1. Two
1. Three

## Blockquotes

Blockquotes can be stylized:

```css
> Default blockquotes
> Have no color

> `{.is-info}`
{.is-info}

...
```

> Default blockquotes
> Have no color

> `{.is-info}`
{.is-info}

> `{.is-success}`
{.is-success}

> `{.is-warning}`
{.is-warning}

> `{.is-danger}`
{.is-danger}

## Multi-line footnotes

Each new line should be tabbed. If you also want a newline inside the footnote, you need to use `<br>`:

```md
[^2]:
	First line
  Second line<br>
  Third line
```
You can see the result here[^2].

[^2]:
	First line
  Second line<br>
  Third line

## Page Source

You can view any page's Markdown source code by clicking the `View Source` button, either from the `Page Actions` from the top right, or the `Edit Page` at the bottom.

# Footnotes
