;;; Install packages
(require 'package)
(push '("marmalade" . "http://marmalade-repo.org/packages/")
	  package-archives)
(push '("melpa" . "http://melpa.milkbox.net/packages/")
	  package-archives)
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("ea489f6710a3da0738e7dbdfc124df06a4e3ae82f191ce66c2af3e0a15e99b90"
			      "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0"
			      "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4"
			      default)))
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(require 'darcula-theme)
;(load-theme 'solarized-dark) ; load theme here
(set-frame-font "Meslo LG S DZ")

;;; Plugins
;; Powerline
(require 'powerline)
(powerline-default-theme)

;; Magit
; Hide message
(setq magit-last-seen-setup-instructions "1.4.0")
(require 'magit)
(autoload 'magit-status "magit" nil t)

;; Helm - auto complete ftw
(require 'helm-config)
(helm-mode 1)

;; C-c commands
; Show unsaved edits
(global-set-key (kbd "C-c d") (lambda () "Shows differences since the last save" (interactive) (diff-buffer-with-file)))
; Show git status
(global-set-key (kbd "C-c s") 'magit-status)
; Terminal
(global-set-key (kbd "C-c t") 'term)

;; Move line up and down
(global-set-key (kbd "M-n") 'move-line-down)
(defun move-line-down () "Moves the current line down by one"
       (interactive)
       (let ((col (current-column)))
	 (transpose-lines -1)
	 (forward-line 2)
	 (forward-char col)))

(global-set-key (kbd "M-p") 'move-line-up)
(defun move-line-up () "Moves the current line up by one"
       (interactive)
       (let ((col (current-column)))
	 (transpose-lines 1)
	 (forward-line -2)
	 (forward-char col)))
