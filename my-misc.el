;; Seed the random-number generator
(random t)

;; Whitespace-style
(setq whitespace-style '(trailing lines space-before-tab
                                  indentation space-after-tab)
      whitespace-line-column 100)

;; Add Urban Dictionary to webjump (C-x g)
(eval-after-load "webjump"
  '(add-to-list 'webjump-sites '("Urban Dictionary" .
                             [simple-query
                              "www.urbandictionary.com"
                              "http://www.urbandictionary.com/define.php?term="
                              ""])))

;; Various superfluous white-space. Just say no.
;;(add-hook 'before-save-hook 'cleanup-buffer-safe)

;; Newline after inserting closing tag in html-mode
(defadvice sgml-close-tag (after close-tag-then-newline activate)
  (newline-and-indent))

;; Add JSP expansions to html-mode
(eval-after-load "sgml-mode" '(require 'jsp-expansions))

;; A bit of misc cargo culting in misc.el
(setq xterm-mouse-mode t)

;;
;; kills all open buffers
;;
(defun kill-all-buffers ()
  "Kill all open buffers, recreates *scratch* buffer"
  (interactive)
  (setq buf_list (buffer-list) )
  (while buf_list
    (kill-buffer (car buf_list) )
    (setq buf_list (cdr buf_list) )
    )
  (create-scratch-buffer)
  )

;;
;; Display the font face at the current point
;; http://stackoverflow.com/questions/1242352/get-font-face-under-cursor-in-emacs
;;
(defun what-face (pos)
  (interactive "d")
  (let ((face (or (get-char-property (point) 'read-face-name)
                  (get-char-property (point) 'face))))
    (if face (message "Face: %s" face) (message "No face at %d" pos))))

(provide 'my-misc)
