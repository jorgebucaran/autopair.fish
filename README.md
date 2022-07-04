# autopair.fish

> Auto-complete matching pairs in the [Fish](https://fishshell.com) command line.

Automatically insert, erase, and skip matching pairs as you type in the command-line: `()`, `[]`, `{}`, `""`, and `''`. E.g., pressing `(` inserts `()` and positions the cursor in between the parentheses. Hopefully.

- Insert matching pairs.

  ```console
  $ echo ⎢ # Let's say ⎪ is the cursor!
  ```

  <kbd>"</kbd> 🥊

  ```console
  $ echo "⎪"
  ```

- Erase pairs on backspace:

  ```console
  $ echo "Hey⎪"
  ```

  <kbd>Backspace</kbd> 🥊🥊🥊

  ```console
  $ echo "⎪"
  ```

  <kbd>Backspace</kbd> 🥊

  ```console
  $ echo ⎪
  ```

- Skip over matched pairs:

  ```console
  $ echo "Hey⎪"
  ```

  <kbd>"</kbd> 🥊

  ```console
  $ echo "Hey"⎪
  ```

- Gracefully handle <kbd>Tab</kbd> completions for variables while inside double quotes.

  ```console
  $ echo "$fish_color_⎪"
  ```

  <kbd>Tab</kbd> 🥊

  ```console
  $ echo "$fish_color_⎪
  "$fish_color_autosuggestion   (Variable: '555' 'brblack')
  "$fish_color_cancel           (Variable: -r)
  "$fish_color_command          (Variable: blue)
  "$fish_color_comment          (Variable: red)
  ...
  ```

## Installation

Install with [Fisher](https://github.com/jorgebucaran/fisher):

```console
fisher install jorgebucaran/autopair.fish
```

## License

[MIT](LICENSE.md)
