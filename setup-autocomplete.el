;; regular auto-complete initialization
(require 'auto-complete-config)
(ac-config-default)

(setq ac-auto-start nil)
(global-set-key "\M-/" 'ac-start)

(provide 'setup-autocomplete)
