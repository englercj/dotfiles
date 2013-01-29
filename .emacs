;rebind the 'end' key to move to end of line
(global-set-key (kbd "<select>") 'end-of-line)

;add ~/.emacs.d to path
(add-to-list 'load-path "~/.emacs.d")

;move auto saves and backups to a folder in home folder
(defvar user-temporary-file-directory "~/.emacs-saves")
(make-directory user-temporary-file-directory t)
(setq backup-by-copying t)
(setq backup-directory-alist
      `(("." . ,user-temporary-file-directory)
        (,tramp-file-name-regexp nil)))
(setq auto-save-list-file-prefix
      (concat user-temporary-file-directory ".auto-saves-"))
(setq auto-save-file-name-transforms
      `((".*" ,user-temporary-file-directory t)))

;;;;;;;;;;;
;;Tabs config
;;;;;;;;;;;
(setq-default indent-tabs-mode nil)