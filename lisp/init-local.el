;;----------------------------------------------------------------------------
;; Some basic local preference
;;----------------------------------------------------------------------------
 ;; Code Style Standard
(setq flycheck-phpcs-standard "WordPress")

 ;; Never backup in cureent directory
(setq backup-directory-alist (quote (("." . "~/.backups"))))

 ; For tab and space
(setq x-stretch-cursor t)
(setq show-trailing-whitespace t)

 ; For javascript
(setq inferior-js-program-command "node -e require('repl').start({ignoreUndefined:true})")

;;----------------------------------------------------------------------------
;; The color of "80 column rule" Guides line
;;----------------------------------------------------------------------------
(setq fci-rule-color "darkblue")
(setq fci-rule-column 80)
(add-hook 'prog-mode-hook 'sanityinc/prog-mode-fci-settings)

;;----------------------------------------------------------------------------
;; For file encoding
;;----------------------------------------------------------------------------
(setq revert-without-query (quote (".*")))
(setq coding-system-for-write 'utf-8)

(define-key global-map "\C-c\C-l" 'revert-buffer-with-gbk)
(define-key global-map "\C-c\C-u" 'revert-buffer-with-utf8)
(define-key global-map "\C-x\C-s" 'save-buffer-with-utf8)

(defun save-buffer-with-utf8 ()
  "Call `save-buffer' with utf8."
  (interactive)
  (let ((coding-system-for-write 'utf-8))
    (save-buffer)))

(defun revert-buffer-with-coding-system-no-confirm (coding-system)
  "Call `revert-buffer-with-coding-system', but when `revert-buffer' do not need confirm."
  (interactive "zCoding system for visited file (default nil): ")
  (let ((coding-system-for-read coding-system))
    (revert-buffer)))

(defun revert-buffer-with-gbk ()
  "Call `revert-buffer-with-coding-system-no-confirm' with gbk."
  (interactive)
  (revert-buffer-with-coding-system-no-confirm 'gbk))

(defun revert-buffer-with-utf8 ()
  "Call `revert-buffer-with-coding-system-no-confirm' with utf8."
  (interactive)
  (revert-buffer-with-coding-system-no-confirm 'utf-8))


;;----------------------------------------------------------------------------
;; For table processing
;;----------------------------------------------------------------------------
(define-key global-map "\C-cr" 'table-recognize)
(define-key global-map "\C-cu" 'table-unrecognize)
(define-key global-map "\C-ci" 'table-insert)

;;----------------------------------------------------------------------------
(require 'init-aes)

;;----------------------------------------------------------------------------
;; Add support for some special languages
;;----------------------------------------------------------------------------
(require 'init-sml)
(require 'init-racket)
(require 'init-bison)
(require 'init-yaml)


(provide 'init-local)