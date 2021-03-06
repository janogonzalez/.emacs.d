# ~/.emacs.d

My Emacs configuration. Only tested in Mountain Lion, installing Emacs
with `brew install emacs --HEAD --cocoa --use-git-head --srgb`.

## Packages

* [better-defaults][better-defaults]: A set of tweaks to improve Emacs
behavior.
* [color-theme-solarized][solarized]: My favorite color theme. Sadly,
the only way to make it work on iTerm 2, when you are using the
Solarized theme for the terminal, is to run
`TERM=xterm-16colors emacs`.
* [ensime][ensime]: Work with Scala files.
* [fill-column-indicator][fci]: I use it to highlight column 80.
* [linum-relative][linum-relative]: Show relative line numbers.
* [markdown-mode][markdown-mode]: Work with Markdown files.
* [rust-mode][rust-mode]: Work with Rust files.

[better-defaults]: https://github.com/technomancy/better-defaults
[solarized]: https://github.com/sellout/emacs-color-theme-solarized
[ensime]: https://github.com/ensime/ensime-emacs
[fci]: https://github.com/alpaker/Fill-Column-Indicator
[linum-relative]: https://github.com/coldnew/linum-relative
[markdown-mode]: http://jblevins.org/git/markdown-mode.git/
[rust-mode]: https://github.com/rust-lang/rust/tree/master/src/etc/emacs
