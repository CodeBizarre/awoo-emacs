# Awoo Emacs
### An Emacs config to howl about
![](https://i.imgur.com/liOPdj0.png)

#### Just looking for the theme?
[Get it here.](https://github.com/CodeBizarre/emacs-awoo-theme)

### In-development
This is my first dive into configuring a proper setup for Emacs. It's probably not efficient yet,
it's organized in a way that makes sense to me and might not make sense to you.
Please let me know if you have a suggestion (For anything!) through a github issue, also please report any bugs/issues through an issue as well!

The end goal is something that's easy to configure and use for anyone - not just current Emacs users, so feedback in regards to advancing farther towards this goal will be greatly appreciated!

### Installing
Awoo Emacs should work on Windows and Linux, I'd love to say MacOS as well but I have no
way of testing that. All commands will be assuming linux usage, adjust accordingly for
other platforms!

1) Install/configure prerequisites (possibly incomplete, testing)

    1.1) For C/C++ support:

      A) `ccls` language server
            * By default ccls location is set to `/usr/bin/ccls`, if this is not correct (Such as on Windows) you MUST change it in `emacs.d/awoo/languages/awoo-c-cpp.el`.

      B) `cmake`, and `libclang` (Ensure you have a valid ClangConfig.cmake available for the install command)

    1.2) `node.js` for TypeScript support

    1.3) `rust`, `rustfmt`, and [rust-analyzer](https://github.com/rust-analyzer/rust-analyzer) for Rust support.

    1.4) `lua` for Lua support (Obviously...)

    1.5) Any desired [Flycheck languages](https://www.flycheck.org/en/latest/languages.html#flycheck-languages)

2) Backup your current emacs configuration:
```sh
mv .emacs.d .emacs.d.backup
```

3) Clone Awoo Emacs
```sh
git clone https://github.com/CodeBizarre/awoo-emacs.git .emacs.d
```

4) Configure Awoo Emacs

    4.1) The main configuration file is `.emacs.d/awoo/awoo-config.el`

    4.2) General Plugin-specific configuration files are located in `.emacs.d/awoo/plugins/config-<plufin>.el` (Note that not all plugins have a file here by default)

    4.3) Language-specific configuration files are contained within `.emacs.d/awoo/languages/awoo-<language>.el` for easy management. If you would like to remove support for a language you don't use, simply remove its file, the opposite applies for adding a language. All files in this directory will be loaded second-to-last, right before `awoo-custom.el`.

    4.4) Add any desired post-init additions/overrides to `~/.emacs.d/awoo/awoo-custom.el`

5) Launch emacs and allow the plugins to download

6) Run required post-setup

    6.1) `M-x all-the-icons-install-fonts` to install the required all-the-icons fonts

    6.2) `M-x irony-install-server` to build and install the C/C++ irony-server

### What's included?
A proper list is coming soon, for now see `.emacs.d/awoo/package-list.el`

### Default binds:
Most of the default bindings are used for plugins, specifically overriden/specified are as follows:

* Whitespace Mode: `C-c w`
* Smartparens Mode: `C-x p s`
* Treemacs:
  * `C-x t t`   - treemacs
  * `M-0`       - treemacs-select-window
  * `C-x t 1`   - treemacs-delete-other-windows
  * `C-x t B`   - treemacs-bookmark
  * `C-x t M-f` - treemacs-find-file
  * `C-x t M-t` - treemacs-find-tag
* Projectile:
  * `s-p` AND `C-c p` - projectile-command-map
* Helpful:
  * `C-h f`   - helpful-callable
  * `C-h v`   - helpful-variable
  * `C-h k`   - helpful-key
  * `C-c C-d` - helpful-at-point
  * `C-h F`   - helpful-function
  * `C-h C`   - helpful-command
* Centaur Tabs:
  * `C-<prior>` - centaur-tabs-backward
  * `C-<next>` - centaur-tabs-forward

### But what does it look like?
![](https://i.imgur.com/FAljFaF.png)
