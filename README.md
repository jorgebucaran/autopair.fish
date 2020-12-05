# autopair.fish

> Auto-complete matching pairs in the [Fish](https://fishshell.com) command line.

Automatically insert, erase, and skip matching delimiters when you type in the command line.  Supports <samp>(</samp> <samp>)</samp>, <samp>[</samp> <samp>]</samp>, <samp>{</samp> <samp>}</samp>, <samp>"</samp> <samp>"</samp>, and <samp>'</samp> <samp>'</samp>. For example, pressing _`(`_ inserts _`()`_ and positions the cursor in between the parentheses. Hopefully.

- Insert matching pairs.

  ```console
  $ echo ⎢ # Let's say ⎪ is the cursor!
  ```

  <kbd>"</kbd> 🥊

  ```console
  $ echo "⎪"
  ```

- Skip over matched pairs:

  ```console
  $ echo "Hello⎪"
  ```

  <kbd>"</kbd> 🥊

  ```console
  $ echo "Hello"⎪
  ```

- Auto-delete pairs on backspace:

  ```console
  $ echo "⎪"
  ```

  <kbd>Backspace</kbd> 🥊

  ```console
  $ echo ⎪
  ```

## Installation

Install with [Fisher](https://github.com/jorgebucaran/fisher):

```console
fisher install jorgebucaran/autopair.fish
```

## License

[MIT](LICENSE.md)

