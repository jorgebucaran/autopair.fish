# Autopair.fish

> Auto-complete matching pairs for the [Fish](https://fishshell.com) command line.

Automatically insert, erase, and skip matching delimiters when you type in the command line. Hopefully. For example, pressing `{` inserts `{}`, and positions the cursor in between the braces.

1. Complete matching pairs. Defaults: (parentheses), [brackets], {braces}, "double quotes", and 'single quotes'

   ```console
   $ echo |
   ```

   > Enter: <kbd>"</kbd>

   ```console
   $ echo "|"
   ```

2. Skips over matched pairs:

   ```console
   $ echo "Hello|"
   ```

   > Enter: <kbd>"</kbd>

   ```console
   $ echo "Hello"|
   ```

3. Auto-deletes pairs on backspace:

   ```console
   $ echo "|"
   ```

   > Enter: <kbd>Backspace</kbd>

   ```console
   $ echo |
   ```

   It's like a toy text editor for your command line. You'll wonder why you didn't get this sooner.

## Installation

With [Fisher](https://github.com/jorgebucaran/fisher):

```console
fisher install jorgebucaran/autopair.fish
```

## License

[MIT](LICENSE.md)
