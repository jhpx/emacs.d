;;----------------------------------------------------------------------------;; The color of "80 column rule" Guides line
;;----------------------------------------------------------------------------
(add-hook 'prog-mode-hook 'sanityinc/prog-mode-fci-settings)

;;----------------------------------------------------------------------------
;; Use Http proxy
;;----------------------------------------------------------------------------
(defconst proxy-server-string "127.0.0.1:8118")
(setq url-proxy-services
 `(("http" . ,proxy-server-string)
 ("https" . ,proxy-server-string)))


;;----------------------------------------------------------------------------
;; For file processing
;;----------------------------------------------------------------------------
(define-key global-map "\C-x\C-c" 'kill-all-buffers-with-suspend)
(define-key global-map "\C-xK" 'kill-all-buffers)

(defun kill-all-buffers ()
  "Kill all buffers and windows."
  (interactive)
  (mapcar 'kill-buffer (buffer-list))
  (delete-other-windows))

(defun kill-all-buffers-then-suspend ()
  "Kill all buffers and windows then suspend."
  (interactive)
  (kill-all-buffers)
  (sanityinc/maybe-suspend-frame))

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
;; Add some miscs
;;----------------------------------------------------------------------------
(require 'init-cjkfonts)

(provide 'init-local)