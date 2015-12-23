(add-to-list 'auto-mode-alist '("buildfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.hbs$" . web-mode))
(set-default 'truncate-lines nil)

(setq backup-directory-alist `(("." . "~/.saves")))
(setq auto-save-file-name-transforms
      `((".*" "~/.saves" t)))

(require 'init-my-default-packages)
(require 'my-custom)

;; (require 'solarized-theme)
;; (load-theme 'solarized-dark t)

(set-face-attribute 'default nil :height 200)
(color-theme-sanityinc-solarized-dark)

(require 'my-func)
(require 'my-key-bindings)
(require 'init-ffip)
(require 'init-revive)

(require 'init-elfeed)
(require 'setup-tab)

(require 'init-ggtags)
(require 'setup-cider)
(require 'init-ido-vertical)
;; (require 'init-mozrepl)
(require 'init-smartparens)
(require 'init-clojure)
(require 'init-syntax-subword)
(require 'init-spell-check)
(require 'init-projectile)
(require 'init-window-number)
(require 'init-org)
(require 'init-yasnippet)
;; (require 'init-syntax-subword)
(subword-mode t)
(setenv "TMPDIR" "/tmp")
(put 'erase-buffer 'disabled nil)

(defun mk-anti-ido-advice (func &rest args)
  "Temporarily disable IDO and call function FUNC with arguments ARGS."
  (interactive)
  (let ((read-file-name-function #'read-file-name-default))
    (if (called-interactively-p 'any)
        (call-interactively func)
      (apply func args))))

(defun mk-disable-ido (command)
  "Disable IDO when command COMMAND is called."
  (advice-add command :around #'mk-anti-ido-advice))

(mk-disable-ido 'dired-create-directory)

(provide 'ryang-init)
