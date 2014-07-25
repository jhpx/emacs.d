# Third party command line tools
These tools are *OPTIONAL*. Your Emacs will NOT crash if they are not installed.

## racket (lisp environment)
- command: "racket"
- needed by scheme-mode `quack'
- configured in `init-racket.el'

## node (node.js)
- command: "node -e require('repl').start({ignoreUndefined:true})"
- needed by `js-comint' package
- configured in `init-javascript.el' and "custom.el"