;;----------------------------------------------------------------------------;; The color of "80 column rule" Guides line
;;----------------------------------------------------------------------------
(add-hook 'prog-mode-hook 'sanityinc/prog-mode-fci-settings)

;;----------------------------------------------------------------------------
;; For file encoding
;;----------------------------------------------------------------------------
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
;; Add support for some special languages
;;----------------------------------------------------------------------------
(require 'init-sml)
(require 'init-racket)
(require 'init-bison)

;;----------------------------------------------------------------------------
;; Add some Operating System Miscs
;;----------------------------------------------------------------------------(w
(require 'init-local-win)

(provide 'init-local)