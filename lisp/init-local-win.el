(when (equal window-system 'w32)
;;;;--------------------------------------------------------------------------
;;;; This config is only for windows
;;;;--------------------------------------------------------------------------

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
(define-key global-map "\C-c\C-c" 'kill-all-buffers-with-suspend)
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
;; Fonts:
;; English Fonts must be 1/2 width of Chinese Fonts
;; For example:
;;   "Dejavu Sans Mono 10" .vs. "WenQuanyi Micro Hei Mono 12"
;;   "Dejavu Sans Mono 10" .vs. "Microsoft Yahei 12"
;;   "Consolas 11" .vs. "Microsoft Yahei 16"
;;   "Liberation Mono 12" .vs. "WenQuanYi Micro Hei Mono 15"
;;----------------------------------------------------------------------------
(set-default-font "Dejavu Sans Mono 10")
(set-fontset-font "fontset-default" 'unicode "Microsoft Yahei 12")

;;;;--------------------------------------------------------------------------
;;;; This config is only for windows
;;;;--------------------------------------------------------------------------
)
(provide 'init-local-win)