# zsh-cheat-sheet

zsh plugin that adds a `cs`/`cheat_sheet` function that lists all commands in the history that have been tagged with a comment.

Use as follows:

1. When you encounter a command you'd like to keep, simply execute it with a comment attached.

```sh
ls -a #List all files
```

2. Next time you want to execute something that has been tagged, just use `cc` and then use the fuzzy matching provided.

### Dependencies
- fzf
- awk
