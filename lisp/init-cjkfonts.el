;; English Fonts must be 1/2 width of Chinese Fonts
;; For example:
;; "Dejavu Sans Mono 10" .vs. "WenQuanyi Micro Hei Mono 12"
;; "Dejavu Sans Mono 10" .vs. "Microsoft Yahei 12"
;; "Consolas 11" .vs. "Microsoft Yahei 16"
;; "Liberation Mono 12" .vs. "WenQuanYi Micro Hei Mono 15"
(set-default-font "Dejavu Sans Mono 10")
(set-fontset-font "fontset-default" 'unicode "Microsoft Yahei 12")

(provide 'init-cjkfonts)
