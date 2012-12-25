(defun myorg-update-parent-cookie ()
  (when (equal major-mode 'org-mode)
    (save-excursion
      (org-back-to-heading)
      (org-update-parent-todo-statistics))))

(defadvice org-kill-line (after fix-cookies activate)
  (myorg-update-parent-cookie))

(defadvice kill-whole-line (after fix-cookies activate)
  (myorg-update-parent-cookie))

(setq org-fontify-done-headline t)
(custom-set-faces
 '(org-done ((t (:foreground "PaleGreen"   
                             :weight normal
                             :strike-through t))))
 '(org-headline-done 
   ((((class color) (min-colors 16) (background dark)) 
     (:foreground "LightSalmon" :strike-through t)))))

;; Publishing
(require 'org-publish)
(setq org-publish-project-alist
      '(
        ;; The windows setup
        ("org-notes"
         :base-directory "d:/Documents/org/"
         :base-extension "org"
         :publishing-directory "d:/Published/"
         :recursive t
         :publishing-function org-publish-org-to-html
         :headline-levels 4             ; Just the default for this project.
         :auto-preamble t
         )
        ("org" :components ("org-notes"))
        ))

(add-hook 'org-mode 'turn-on-auto-fill)

(provide 'setup-org)
