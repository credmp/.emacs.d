(setq visible-bell nil
      font-lock-maximum-decoration t
      color-theme-is-global t
      truncate-partial-width-windows nil)

;;(set-face-background 'region "#464740")

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'Jadedragon t)
;;(add-to-list 'custom-theme-load-path "~/.emacs.d/site-lisp/color-theme-solarized")
;;(load-theme 'solarized-light t)

;; Highlight current line
(global-hl-line-mode -1)

;; Show line number on the side
(global-linum-mode t)

;; Customize background color of lighlighted line
(set-face-background 'hl-line "#252525")

;; Highlight in yasnippet
(set-face-background 'yas/field-highlight-face "#333399")

(set-face-foreground 'font-lock-warning-face "#ff6666")

;; org-mode colors
(setq org-todo-keyword-faces
      '(
        ("INPR" . (:foreground "yellow" :weight bold))
        ("DONE" . (:foreground "green" :weight bold))
        ("IMPEDED" . (:foreground "red" :weight bold))
        ))

;; Highlight matching parentheses when the point is on them.
(show-paren-mode 1)

;; No menu bars
(menu-bar-mode -1)

(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))
  (turn-off-tool-bar)
  (tooltip-mode -1)
  (turn-off-tool-bar)
  (blink-cursor-mode -1))

(add-hook 'before-make-frame-hook 'turn-off-tool-bar)

;; Ditch them scrollbars
(scroll-bar-mode -1)

;; Make zooming affect frame instead of buffers
(require 'zoom-frm)

(provide 'appearance)
