(require 'eclim)

(setq eclim-eclipse-dirs '("~/Applications/eclipse"))
(setq eclim-executable "~/Applications/eclipse/eclim")
(setq eclimd-default-workspace "~/Development/workspace")
(setq eclim-use-yasnippet nil)
(setq eclim-auto-save t)
(global-eclim-mode)

(setq help-at-pt-display-when-idle t)
(setq help-at-pt-timer-delay 0.5)
(help-at-pt-set-timer)

(require 'eclimd)

;; add the emacs-eclim source
(require 'ac-emacs-eclim-source)
(add-hook 'eclim-mode-hook
          (lambda ()
            (electric-pair-mode t)
            (add-to-list 'ac-sources 'ac-source-emacs-eclim)))

(add-hook 'java-mode-hook
          (lambda ()
            (eclim-mode t)
            )
          )

(custom-set-faces
 '(eclim-problems-highlight-error-face ((t (:background "#1D1515" :foreground "#d13120" :underline "red"))))
 '(eclim-problems-highlight-warning-face ((t (:background "#251c1e" :foreground "#b23f1e" :underline "orange" :weight bold)))))

(defcustom eclim-java-field-prefixes "\\(s_\\|m_\\)\\(.*\\)"
  "this variable contains a regular expression matching the java field
  prefixes. The prefixes get removed when using yasnippet to generate
  getter and setter methods. This variable allows you to have field
  names like 'm_username' and get method names like 'setUsername' and 'getUsername'"
  :group 'eclim-java
  :type 'regexp)

(defun eclim--java-symbol-remove-prefix (name)
  (if (string-match eclim-java-field-prefixes name)
      (match-string 2 name)
    name))


(provide 'setup-eclim)
