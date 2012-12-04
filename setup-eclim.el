(require 'eclim)

(setq eclim-eclipse-dirs '("~/Applications/eclipse"))
(setq eclim-executable "~/Applications/eclipse/eclim")
(setq eclimd-default-workspace "~/Documents/workspace")

(setq eclim-auto-save t)
(global-eclim-mode)

(setq help-at-pt-display-when-idle t)
(setq help-at-pt-timer-delay 0.5)
(help-at-pt-set-timer)

(require 'eclimd)

;; regular auto-complete initialization
(require 'auto-complete-config)
(ac-config-default)

;; add the emacs-eclim source
(require 'ac-emacs-eclim-source)
(add-hook 'eclim-mode-hook (lambda ()
                              (add-to-list 'ac-sources 'ac-source-emacs-eclim)))


(provide 'setup-eclim)
