---
title: Project Standards
description: 
published: true
date: 2024-05-06T20:10:49.577Z
tags: 
editor: markdown
dateCreated: 2024-05-05T21:22:30.441Z
---

# Naming
All names, including but not limited to CI Actions, Respositories, and folder names inside the project, must follow lower-kebab-case except in cases where a program requires something else.

# Structure
All projects should provide:
- A devenv when applicable, preferably in the form of direnv.
	- If devenv is applicable also provide a flake.lock
- A short summary of what the project does, as well as how to use the project in a top level README.​md
	- The README should include a badge of who the repository is maintained by
- A CONTRIBUTING.​md file top level that tells people how to contribute to said project
- A top level LICENSE file or folder of which includes the License or Licenses used in the project

# Commit Messages
- First line of the commit message should be a short (<50 chars) description of the purpose of the commit
	- First word should be one of: `feat:` for feature, `fix:` for bugfixes, or `break:` for breaking changes
- First line and main message should have 1 blank newline in between them for ease of reading
- Main messages
	- **Features** should have a reason to include the feature, as well as an example of the feature in use (if applicable)
  - **Fixes** should have what the original bug was, as well as a short summary of the steps that were required to fix it
  - **Breaking Changes** should have what it breaks, how it breaks it, and a short transition guide
