(require-package 'quack)

(setq quack-program-name "racket")
(setq quack-fontify-style nil)

(autoload 'run-scheme "quack" "Quack scheme editing mode" t)
(autoload 'scheme-mode "quack" "Quack scheme editing mode" t)

(add-to-list 'auto-mode-alist '("\\.rkt$" . scheme-mode))

(provide 'init-racket)
