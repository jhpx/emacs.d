(require-package 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-hook 'yaml-mode-hook
  '(lambda ()
    (when (package-installed-p 'aes)
      (require 'aes)
      (aes-enable-auto-decryption))))
(provide 'init-yaml)