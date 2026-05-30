# Dotfiles

This repository stores shell and editor configuration files that are normally hidden
from a regular directory listing.

## Why it looks empty

Most dotfiles start with a `.` prefix, so they do not show up in a standard `ls`
output.

To view them:

```bash
ls -la
```

## Common usage

- Copy or symlink the files you want into your home directory.
- Keep machine-specific settings separate from shared config when possible.
- Review changes carefully before syncing dotfiles across systems.
