dotfiles
========

My common dotfiles

## Install

```shell
# clone the repo to /tmp
git clone https://github.com/englercj/dotfiles.git /tmp/dotfiles &&

# copy the dotfiles over (but not .git, readme, or the folder itself)
find /tmp/dotfiles/ ! \( -path "*.git" -o -path "*.git/*" -o -name "README.md" -o -path "/tmp/dotfiles/" \) -exec cp {} ~/ \; &&

# remove the cloned folder
rm -rf /tmp/dotfiles/
```
