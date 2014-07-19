(require-package 'quack)

(setq quack-program-name "racket")
(setq quack-fontify-style nil)

(autoload 'run-scheme "quack" "Quack scheme editing mode" t)
(autoload 'scheme-mode "quack" "Quack scheme editing mode" t)

(setq auto-mode-alist
    (append '(
        ("\\.rkt$" . scheme-mode)
    )
    auto-mode-alist))

(provide 'init-racket)
