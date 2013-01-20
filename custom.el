;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(default ((t (:inherit nil :stipple nil :background "Black" :foreground "White" :inverse-video nil :box nil :strike-t*hrough nil :overline nil :underline nil :slant normal :weight normal :width normal :height 105))))
;;  '(diff-refine-change ((t (:background "midnight blue"))))
;;  '(highlight ((((class color) (min-colors 88) (background dark)) (:background "#111111"))))
;;  '(js2-function-param-face ((t (:foreground "LightGoldenrod"))))
;;  '(mumamo-background-chunk-submode ((((class color) (min-colors 88) (background dark)) nil)))
;;  '(show-paren-match ((nil (:background "#333399"))))
;;  '(show-paren-mismatch ((((class color)) (:background "red")))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ede-project-directories (quote ("/Users/arjen/Development/Projects/Java/java-from-nothing")))
 '(ido-use-filename-at-point nil)
 '(org-agenda-files (quote ("d:/Documents/org/index.org" "d:/Documents/org/ToDo.org")))
 '(safe-local-variable-values (quote ((eval font-lock-add-keywords nil (quote (("defexamples\\|def-example-group\\| => " (0 (quote font-lock-keyword-face)))))) (eval when (and (buffer-file-name) (file-regular-p (buffer-file-name)) (string-match-p "^[^.]" (buffer-file-name))) (emacs-lisp-mode)) (eval font-lock-add-keywords nil (quote (("defexamples\\| => " (0 (quote font-lock-keyword-face)))))) (encoding . utf-8)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(eclim-problems-highlight-error-face ((t (:background "#1D1515" :foreground "#d13120" :underline "red"))))
 '(eclim-problems-highlight-warning-face ((t (:background "#251c1e" :foreground "#b23f1e" :underline "orange" :weight bold)))))
